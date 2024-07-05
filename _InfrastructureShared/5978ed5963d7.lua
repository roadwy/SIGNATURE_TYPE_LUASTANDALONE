local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.LOWFI
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.PointerToRawData
L1_1 = pesecs
L2_2 = pehdr
L2_2 = L2_2.NumberOfSections
L1_1 = L1_1[L2_2]
L1_1 = L1_1.SizeOfRawData
L0_0 = L0_0 + L1_1
L1_1 = L0_0 + 1
L1_1 = L1_1 + 38
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if L1_1 > L2_2 then
  L1_1 = mp
  L1_1 = L1_1.changedetectionname
  L2_2 = 192
  L1_1(L2_2)
  L1_1 = mp
  L1_1 = L1_1.SUSPICIOUS
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  57,
  50,
  75,
  88,
  50,
  55,
  69,
  104,
  87,
  54,
  67,
  113,
  112,
  99,
  83,
  111,
  52,
  89,
  57,
  52,
  66,
  110,
  85,
  114,
  70,
  109,
  110,
  78,
  107,
  80,
  53,
  69,
  110,
  84
}
L6_6 = 71
for L6_6 = 1, 38 do
  if string.byte(L1_1, L6_6) ~= L2_2[L6_6] then
    mp.changedetectionname(192)
    return mp.SUSPICIOUS
  end
end
return L3_3
