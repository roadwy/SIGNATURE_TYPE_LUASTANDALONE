local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if mp.get_mpattribute("LUA:FileSizeLE1M.A") and string.find(L0_0, "bbmt2022q753 aa carpentry scan.exe", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
