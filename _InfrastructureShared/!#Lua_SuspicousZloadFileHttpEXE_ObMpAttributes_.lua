local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.FILEPATH_QUERY_LOWERCASE)
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
if string.find(L1_1, "temp\\\\http.exe", 1, true) ~= nil then
  mp.set_mpattribute("Lua:SuspiciousZloaderFileName")
end
return mp.CLEAN
