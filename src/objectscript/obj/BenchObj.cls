Class objectscript.obj.BenchObj Extends (%SerialObject, %XML.Adaptor)
{

/// Description
Property PropStr As %String;

Property PropInt As %Integer;

Property PropFloat As %Float;

Property PropList As %List;

Storage Default
{
<Data name="BenchObjState">
<Value name="1">
<Value>PropStr</Value>
</Value>
<Value name="2">
<Value>PropInt</Value>
</Value>
<Value name="3">
<Value>PropFloat</Value>
</Value>
<Value name="4">
<Value>PropList</Value>
</Value>
</Data>
<State>BenchObjState</State>
<StreamLocation>^objectscript.obj.BenchObjS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
