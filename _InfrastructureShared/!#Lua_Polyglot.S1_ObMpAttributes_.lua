local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 5242880 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readheader
L1_1 = L1_1(0, 256)
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
if string.find(L1_1, ".pdf", 1, true) ~= nil or string.find(L1_1, ".doc", 1, true) ~= nil or string.find(L1_1, ".xls", 1, true) ~= nil or string.find(L1_1, ".htm", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
