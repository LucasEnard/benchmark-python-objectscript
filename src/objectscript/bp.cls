/// 
Class objectscript.bp Extends Ens.BusinessProcessBPL
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='objectscript.msg.BenchMsgStr' response='Ens.StringResponse' height='2000' width='2000' >
<context>
<property name='i' type='%Integer' initialexpression='0' instantiate='0' />
<property name='start' type='%Float' instantiate='0' />
<property name='end' type='%Float' instantiate='0' />
</context>
<sequence xend='200' yend='650' >
<code name='start timer' xpos='200' ypos='250' >
<![CDATA[ SET context.start = $PIECE($ZTS,",",2)]]>
</code>
<while name='for 1000' condition='context.i &lt; 1000' xpos='200' ypos='350' xend='200' yend='450' >
<assign name="add 1 to i" property="context.i" value="context.i + 1" action="set" xpos='200' ypos='250' />
<call name='call bo' target='objectscript.bo' async='0' xpos='200' ypos='350' >
<request type='objectscript.msg.BenchMsgStr' >
<assign property="callrequest.Prop1" value="&quot;prop1&quot;" action="set" />
<assign property="callrequest.Prop2" value="&quot;prop2&quot;" action="set" />
<assign property="callrequest.Prop3" value="&quot;prop3&quot;" action="set" />
<assign property="callrequest.Prop4" value="&quot;prop4&quot;" action="set" />
<assign property="callrequest.Prop5" value="&quot;prop5&quot;" action="set" />
<assign property="callrequest.Prop6" value="&quot;prop6&quot;" action="set" />
<assign property="callrequest.Prop7" value="&quot;prop7&quot;" action="set" />
<assign property="callrequest.Prop8" value="&quot;prop8&quot;" action="set" />
<assign property="callrequest.Prop9" value="&quot;prop9&quot;" action="set" />
<assign property="callrequest.Prop10" value="&quot;prop10&quot;" action="set" />
</request>
<response type='objectscript.msg.BenchMsgStr' />
</call>
</while>
<code name='end timer' xpos='200' ypos='450' >
<![CDATA[ SET context.end = $PIECE($ZTS,",",2)]]>
</code>
<assign name="time to msg" property="response.StringValue" value="context.end - context.start" action="set" xpos='200' ypos='550' />
</sequence>
</process>
}

}
