local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if (mp.get_mpattribute("Lua:FileSizeLT2000") or mp.get_mpattribute("LUA:FileSizeLE1000.A")) and (string.find(L0_0, "summary_%d%d%d%d+_%d%d%d%d+.lnk") ~= nil or string.find(L0_0, "documentsfolder %d%d%d%d+ 12%d%d2022.lnk") ~= nil or string.find(L0_0, "report%-%d%d%d+_%d%d%d%d+.lnk") ~= nil) then
  return mp.INFECTED
end
return mp.CLEAN
