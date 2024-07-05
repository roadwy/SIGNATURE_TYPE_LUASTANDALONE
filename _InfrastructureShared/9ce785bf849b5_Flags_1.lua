local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Themida_Attr"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasexports
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 8 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  if L0_0 ~= 7 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L1_1 = L1_1 - 1
L0_0 = L0_0[L1_1]
L0_0 = L0_0.Characteristics
if L0_0 ~= 3758096448 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[1]
L0_0 = L0_0.RVA
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L1_1 = L1_1[1]
L1_1 = L1_1.Size
L2_2 = pe
L2_2 = L2_2.contains_rva
L3_3 = pehdr
L3_3 = L3_3.NumberOfSections
L3_3 = L3_3 - 1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 ~= 91 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.foffset_rva
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L0_0 = L2_2
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = L0_0
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= 1819042862 then
  return L4_4
end
if L4_4 ~= 0 then
  return L4_4
end
for L7_7 = 64, 69 do
  if L2_2:byte(L7_7) > 122 then
    return mp.CLEAN
  end
  if L2_2:byte(L7_7) < 65 then
    return mp.CLEAN
  end
end
return L4_4
