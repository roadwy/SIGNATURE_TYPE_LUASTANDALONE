local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 == nil then
  return mp.CLEAN
end
if mp.get_mpattribute("pea_isexe") and mp.get_mpattribute("RPF:IsoIsoExt") and mp.get_mpattribute("LUA:FileSizeLE1M.A") and string.find(L0_0, ",pdf.iso", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
