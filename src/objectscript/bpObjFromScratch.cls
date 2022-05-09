/// Description
Class objectscript.bpobjfrmscr Extends Ens.BusinessProcess [ ClassType = persistent, ProcedureBlock ]
{

Method OnRequest(pRequest As objectscript.msg.BenchMsgObj, Output pResponse As Ens.StringResponse) As %Status
{
    set sc =$$$OK

    set start = $P($ZTS,",",2)

    For i = 1:1:1000 {
        set msg = ##class(objectscript.msg.BenchMsgObj).%New()
        
        set msg.Prop1.PropInt = 1
        set msg.Prop1.PropStr = "test"
        set msg.Prop1.PropFloat = 1.1
        set msg.Prop1.PropList = $LISTBUILD("1","2","3")

        set msg.Prop2.PropInt = 1
        set msg.Prop2.PropStr = "test"
        set msg.Prop2.PropFloat = 1.1
        set msg.Prop2.PropList = $LISTBUILD("1","2","3")

        set msg.Prop3.PropInt = 1
        set msg.Prop3.PropStr = "test"
        set msg.Prop3.PropFloat = 1.1
        set msg.Prop3.PropList = $LISTBUILD("1","2","3")

        set msg.Prop4.PropInt = 1
        set msg.Prop4.PropStr = "test"
        set msg.Prop4.PropFloat = 1.1
        set msg.Prop4.PropList = $LISTBUILD("1","2","3")

        set msg.Prop5.PropInt = 1
        set msg.Prop5.PropStr = "test"
        set msg.Prop5.PropFloat = 1.1
        set msg.Prop5.PropList = $LISTBUILD("1","2","3")

        set msg.Prop6.PropInt = 1
        set msg.Prop6.PropStr = "test"
        set msg.Prop6.PropFloat = 1.1
        set msg.Prop6.PropList = $LISTBUILD("1","2","3")

        set msg.Prop7.PropInt = 1
        set msg.Prop7.PropStr = "test"
        set msg.Prop7.PropFloat = 1.1
        set msg.Prop7.PropList = $LISTBUILD("1","2","3")

        set msg.Prop8.PropInt = 1
        set msg.Prop8.PropStr = "test"
        set msg.Prop8.PropFloat = 1.1
        set msg.Prop8.PropList = $LISTBUILD("1","2","3")

        set msg.Prop9.PropInt = 1
        set msg.Prop9.PropStr = "test"
        set msg.Prop9.PropFloat = 1.1
        set msg.Prop9.PropList = $LISTBUILD("1","2","3")

        set msg.Prop10.PropInt = 1
        set msg.Prop10.PropStr = "test"
        set msg.Prop10.PropFloat = 1.1
        set msg.Prop10.PropList = $LISTBUILD("1","2","3")

        $$$ThrowOnError(..SendRequestSync("objectscript.bo",msg))

        Write i, !
    }

    s end=$P($ZTS,",",2)

    $$$LOGINFO(end-start)

    set pResponse = ##class(Ens.StringResponse).%New(end-start)

    Return sc
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
