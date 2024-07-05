local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 16384 or L0_0 > 65536 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.getfilename
L2_2 = L2_2()
L1_1 = L1_1(L2_2, L2_2())
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "\\xlstart\\office_.xls", 1, true)
if L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(false)
L2_2 = tostring
L2_2 = L2_2(mp.readfooter(0, 4096))
if L2_2 == nil then
  return mp.CLEAN
end
if string.find(L2_2, "Module=Majoduck_SK_1", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
