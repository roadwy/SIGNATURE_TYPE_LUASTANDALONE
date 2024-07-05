local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
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
  32,
  69,
  120,
  116,
  114,
  97,
  99,
  116,
  32,
  76,
  97,
  98,
  101,
  108,
  0
}
L6_6 = 109
for L6_6 = 1, 19 do
  if string.byte(L1_1, L6_6) ~= L2_2[L6_6] then
    mp.set_mpattribute("HSTR:TrojanDropper:Win32/Bindmaener_Lowfi")
    return mp.CLEAN
  end
end
if L3_3 >= 10 then
  return L3_3
end
L3_3(L4_4)
return L3_3
