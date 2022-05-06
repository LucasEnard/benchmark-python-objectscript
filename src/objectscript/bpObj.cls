/// 
Class objectscript.bpObj Extends Ens.BusinessProcessBPL
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='objectscript.msg.BenchMsgObj' response='Ens.StringResponse' height='2000' width='2000' >
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
<request type='objectscript.msg.BenchMsgObj' >
<assign property="callrequest.Prop1.PropInt" value="1" action="set" />
<assign property="callrequest.Prop1.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop1.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop1.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
<assign property="callrequest.Prop2.PropInt" value="1" action="set" />
<assign property="callrequest.Prop2.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop2.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop2.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
<assign property="callrequest.Prop3.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop3.PropInt" value="1" action="set" />
<assign property="callrequest.Prop3.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop3.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
<assign property="callrequest.Prop4.PropInt" value="1" action="set" />
<assign property="callrequest.Prop4.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop4.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop4.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
<assign property="callrequest.Prop5.PropInt" value="1" action="set" />
<assign property="callrequest.Prop5.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop5.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop5.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
<assign property="callrequest.Prop6.PropInt" value="1" action="set" />
<assign property="callrequest.Prop6.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop6.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop6.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
<assign property="callrequest.Prop7.PropInt" value="1" action="set" />
<assign property="callrequest.Prop7.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop7.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop7.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
<assign property="callrequest.Prop8.PropInt" value="1" action="set" />
<assign property="callrequest.Prop8.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop8.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop8.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
<assign property="callrequest.Prop9.PropInt" value="1" action="set" />
<assign property="callrequest.Prop9.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop9.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop9.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
<assign property="callrequest.Prop10.PropInt" value="1" action="set" />
<assign property="callrequest.Prop10.PropStr" value="&quot;str&quot;" action="set" />
<assign property="callrequest.Prop10.PropFloat" value="1.1" action="set" />
<assign property="callrequest.Prop10.PropList" value="$LISTBUILD(&quot;1&quot;,&quot;2&quot;,&quot;3&quot;)" action="set" />
</request>
<response type='objectscript.msg.BenchMsgObj' />
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
