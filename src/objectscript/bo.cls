Class objectscript.bo Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method BenchBo(pRequest As objectscript.msg.BenchMsgStr, Output pResponse As objectscript.msg.BenchMsgStr) As %Status
{
	set tStatus = $$$OK
	
	try{
		set pResponse = ##class(objectscript.msg.BenchMsgStr).%New()
		set pResponse.Prop1 = pRequest.Prop1
		set pResponse.Prop2 = pRequest.Prop2
		set pResponse.Prop3 = pRequest.Prop3
		set pResponse.Prop4 = pRequest.Prop4
		set pResponse.Prop5 = pRequest.Prop5
		set pResponse.Prop6 = pRequest.Prop6
		set pResponse.Prop7 = pRequest.Prop7
		set pResponse.Prop8 = pRequest.Prop8
		set pResponse.Prop9 = pRequest.Prop9
		set pResponse.Prop10 = pRequest.Prop10
	}
	catch exp
	{
		Set tStatus = exp.AsStatus()
	}

	Quit tStatus
}

Method BenchBoObj(pRequest As objectscript.msg.BenchMsgObj, Output pResponse As objectscript.msg.BenchMsgObj) As %Status
{
	set tStatus = $$$OK
	
	try{
		set pResponse = ##class(objectscript.msg.BenchMsgObj).%New()
		set pResponse.Prop1 = pRequest.Prop1
		set pResponse.Prop2 = pRequest.Prop2
		set pResponse.Prop3 = pRequest.Prop3
		set pResponse.Prop4 = pRequest.Prop4
		set pResponse.Prop5 = pRequest.Prop5
		set pResponse.Prop6 = pRequest.Prop6
		set pResponse.Prop7 = pRequest.Prop7
		set pResponse.Prop8 = pRequest.Prop8
		set pResponse.Prop9 = pRequest.Prop9
		set pResponse.Prop10 = pRequest.Prop10
	}
	catch exp
	{
		Set tStatus = exp.AsStatus()
	}

	Quit tStatus
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="objectscript.msg.BenchMsgStr"> 
		<Method>BenchBo</Method>
	</MapItem>
	<MapItem MessageType="objectscript.msg.BenchMsgObj"> 
		<Method>BenchBoObj</Method>
	</MapItem>
</MapItems>
}

}
