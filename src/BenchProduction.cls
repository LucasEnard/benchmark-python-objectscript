Class Python.BenchProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Python.BenchProduction" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="Python.BenchBo" Category="" ClassName="Python.BenchBo" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Python.BenchBp" Category="" ClassName="Python.BenchBp" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="objectscript.bo" Category="" ClassName="objectscript.bo" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="objectscript.bpObj" Category="" ClassName="objectscript.bpObj" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="objectscript.bp" Category="" ClassName="objectscript.bp" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
