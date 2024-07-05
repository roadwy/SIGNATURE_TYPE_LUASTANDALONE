local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if mp.IsKnownFriendlyFile(L0_0, true, true) == true then
  return mp.CLEAN
end
if ({
  ["dat.client.exe"] = true,
  ["mysqlworkbench.exe"] = true,
  ["vida.desktop.exe"] = true,
  ["dragonfly.exe"] = true,
  ["xrmtoolbox.exe"] = true,
  ["java.exe"] = true,
  ["idea64.exe"] = true,
  ["eclipse-inst.exe"] = true,
  ["cosmosworker.exe"] = true,
  ["bt.saas.agentdesktop.exe"] = true,
  ["codemeterruntime.exe"] = true,
  ["aetherclientx.exe"] = true
})[string.lower(L0_0:match("\\([^\\]+)$"))] then
  return mp.CLEAN
end
return mp.INFECTED
