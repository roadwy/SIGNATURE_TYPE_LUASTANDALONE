local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if not (L0_0 < 5) then
  L0_0 = pesecs
  L0_0 = L0_0[1]
  L0_0 = L0_0.SizeOfRawData
  if not (L0_0 < 249856) then
    L0_0 = pehdr
    L0_0 = L0_0.MajorImageVersion
    if L0_0 == 0 then
      L0_0 = pehdr
      L0_0 = L0_0.MinorImageVersion
    end
  end
elseif L0_0 ~= 0 then
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
L1_1 = L0_0 + 2048
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if L1_1 > L2_2 then
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
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  1,
  0,
  0,
  0,
  90,
  66,
  76,
  0
}
L6_6 = 70
for L6_6 = 1, 12 do
  if string.byte(L1_1, L6_6) ~= L2_2[L6_6] then
    return mp.CLEAN
  end
end
return L3_3
