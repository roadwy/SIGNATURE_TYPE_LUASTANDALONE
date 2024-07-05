local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = peattributes
L0_0 = L0_0.ismsil
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.get_netmetadata
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(L2_2)
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9
}
L5_5 = -1
L6_6 = -1
L7_7 = -1
L8_8 = -1
L9_9 = -1
if L2_2 == true then
  L1_1[1] = L2_2
end
if L2_2 == true then
  L1_1[2] = L2_2
end
if L2_2 == true then
  L1_1[3] = L2_2
end
if L2_2 == true then
  L1_1[4] = L2_2
end
if L2_2 == true then
  L1_1[5] = L2_2
end
if L2_2 == true then
  L1_1[6] = L2_2
end
if L2_2 == true then
  L1_1[7] = L2_2
end
if L2_2 == true then
  L1_1[8] = L2_2
end
for L5_5, L6_6 in L2_2(L3_3) do
  if L6_6 ~= -1 then
    L7_7 = mp
    L7_7 = L7_7.readu_u32
    L8_8 = L6_6
    L9_9 = 1
    L7_7 = L7_7(L8_8, L9_9)
    L8_8 = L0_0.strheap_RVA
    L9_9 = pe
    L9_9 = L9_9.metadata_decode
    L10_10 = L7_7
    L11_11 = 2
    L9_9 = L9_9(L10_10, L11_11)
    L8_8 = L8_8 + L9_9
    L9_9 = pe
    L9_9 = L9_9.mmap_rva
    L10_10 = L8_8
    L11_11 = 10
    L9_9 = L9_9(L10_10, L11_11)
    L10_10 = string
    L10_10 = L10_10.find
    L11_11 = L9_9
    L12_12 = "Initialize"
    L10_10 = L10_10(L11_11, L12_12, 1, true)
    if L10_10 ~= nil then
      L10_10 = pe
      L10_10 = L10_10.metadata_decode
      L11_11 = L7_7
      L12_12 = 1
      L10_10 = L10_10(L11_11, L12_12)
      L11_11 = L0_0.strheap_RVA
      L12_12 = pe
      L12_12 = L12_12.metadata_decode
      L12_12 = L12_12(L10_10, 2)
      L8_8 = L11_11 + L12_12
      L11_11 = L0_0.strheap_RVA
      L12_12 = pe
      L12_12 = L12_12.metadata_decode
      L12_12 = L12_12(L10_10, 3)
      L11_11 = L11_11 + L12_12
      L12_12 = pe
      L12_12 = L12_12.mmap_rva
      L12_12 = L12_12(L8_8, 12)
      L9_9 = L12_12
      L12_12 = pe
      L12_12 = L12_12.mmap_rva
      L12_12 = L12_12(L11_11, 22)
      if string.find(L9_9, "ScriptObject", 1, true) ~= nil and string.find(L12_12, "System.Windows.Browser", 1, true) ~= nil then
        return mp.INFECTED
      end
    end
  end
end
return L2_2
