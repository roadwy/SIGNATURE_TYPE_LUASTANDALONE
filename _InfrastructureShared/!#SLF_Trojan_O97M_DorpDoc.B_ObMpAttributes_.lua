local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = L0_0 - 6912
L3_3 = 2912
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = true
L2_2(L3_3)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L3_3 = L2_2(L3_3, "Dorp.kock", 1, true)
if L2_2 and string.find(L1_1, "D\000o\000c\000u\000S\000i\000g\000n\000\174\000", L3_3, true) then
  return mp.INFECTED
end
return mp.CLEAN
