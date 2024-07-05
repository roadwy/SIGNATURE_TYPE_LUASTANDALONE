local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(mp.getfilename(), -3))
if L0_0 ~= "url" then
  return mp.CLEAN
end
if mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) ~= 0 or not mp.UfsGetMetadataBool("Lua:SingleFileInZip", true) then
  return mp.CLEAN
end
return mp.INFECTED
