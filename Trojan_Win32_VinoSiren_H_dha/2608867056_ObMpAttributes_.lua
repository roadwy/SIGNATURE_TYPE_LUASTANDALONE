local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR
L1_1 = L1_1 + 1
L0_0 = L0_0[L1_1]
L0_0 = L0_0.RVA
if L0_0 ~= 0 then
  L0_0 = pehdr
  L0_0 = L0_0.DataDirectory
  L1_1 = pe
  L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR
  L1_1 = L1_1 + 1
  L0_0 = L0_0[L1_1]
  L0_0 = L0_0.Size
elseif L0_0 == 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR
L1_1 = L1_1 + 1
L0_0 = L0_0[L1_1]
L0_0 = L0_0.RVA
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L2_2 = pe
L2_2 = L2_2.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR
L2_2 = L2_2 + 1
L1_1 = L1_1[L2_2]
L1_1 = L1_1.Size
L2_2 = pesecs
L3_3 = pehdr
L3_3 = L3_3.NumberOfSections
L2_2 = L2_2[L3_3]
L2_2 = L2_2.PointerToRawData
L3_3 = pesecs
L4_4 = pehdr
L4_4 = L4_4.NumberOfSections
L3_3 = L3_3[L4_4]
L3_3 = L3_3.SizeOfRawData
L2_2 = L2_2 + L3_3
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
if L0_0 == L2_2 then
  L4_4 = L0_0 + L1_1
elseif L3_3 < L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readprotection
L5_5 = false
L4_4(L5_5)
L4_4 = mp
L4_4 = L4_4.readfile
L5_5 = L2_2
L6_6 = 4
L4_4 = L4_4(L5_5, L6_6)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = L4_4
L7_7 = 1
L5_5 = L5_5(L6_6, L7_7)
if L5_5 ~= 0 then
  L6_6 = L2_2 + L5_5
elseif L3_3 < L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = L2_2 + 4
L6_6 = L6_6 + L5_5
L7_7 = mp
L7_7 = L7_7.readfile
L7_7 = L7_7(L6_6, 20)
if L7_7 == nil then
  return mp.CLEAN
end
mp.readprotection(true)
if 1 > mp.readu_u32(L7_7, 13) then
  return mp.CLEAN
end
L5_5 = mp.readu_u32(L7_7, 17)
if L5_5 == 0 or L3_3 < L6_6 + 20 + 4 + L5_5 then
  return mp.CLEAN
end
return mp.INFECTED
