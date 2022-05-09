/// Description
Class objectscript.bpfrmscr Extends Ens.BusinessProcess [ ClassType = persistent, ProcedureBlock ]
{

Method OnRequest(pRequest As objectscript.msg.BenchMsgStr, Output pResponse As Ens.StringResponse) As %Status
{
    set sc =$$$OK

    set start = $P($ZTS,",",2)

    For i = 1:1:1000 {
        set msg = ##class(objectscript.msg.BenchMsgStr).%New()
        
        set msg.Prop10 = "Prop0"
        set msg.Prop1 = "Prop0"
        set msg.Prop2 = "Prop0"
        set msg.Prop3 = "Prop0"
        set msg.Prop4 = "Prop0"
        set msg.Prop5 = "Prop0"
        set msg.Prop6 = "Prop0"
        set msg.Prop7 = "Prop0"
        set msg.Prop8 = "Prop0"
        set msg.Prop9 = "Prop0"

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
