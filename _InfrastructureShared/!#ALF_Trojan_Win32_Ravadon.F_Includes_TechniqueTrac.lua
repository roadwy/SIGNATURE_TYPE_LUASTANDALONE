local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L15_15 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L1_1())
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = -4
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= ".tmp" then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = ".exe."
  L1_1 = L1_1(L2_2, L3_3)
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONMODIFIEDHANDLECLOSE
if L1_1 ~= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
L3_3 = pehdr
L3_3 = L3_3.NumberOfSections
L4_4 = pesecs
L4_4 = L4_4[L3_3]
L4_4 = L4_4.PointerToRawData
L5_5 = pesecs
L5_5 = L5_5[L3_3]
L5_5 = L5_5.SizeOfRawData
L6_6 = L4_4 + L5_5
if L2_2 <= L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = pehdr
L7_7 = L7_7.DataDirectory
L8_8 = pe
L8_8 = L8_8.IMAGE_DIRECTORY_ENTRY_SECURITY
L7_7 = L7_7[L8_8]
L7_7 = L7_7.RVA
if L6_6 >= L7_7 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = 0
if L7_7 == 0 then
  L8_8 = L2_2 - L6_6
elseif L6_6 < L7_7 then
  L8_8 = L7_7 - L6_6
else
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = L8_8 * 100
L9_9 = L9_9 / L2_2
if L9_9 > 90 then
  L9_9 = mp
  L9_9 = L9_9.readprotection
  L9_9(L10_10)
  L9_9 = 0
  for L13_13 = 1, 3 do
    L14_14 = L8_8 / 4
    L14_14 = L14_14 * L13_13
    L14_14 = L6_6 + L14_14
    L15_15 = L14_14 + 256
    if L2_2 <= L15_15 then
      L15_15 = mp
      L15_15 = L15_15.CLEAN
      return L15_15
    end
    L15_15 = mp
    L15_15 = L15_15.readfile
    L15_15 = L15_15(L14_14, 256)
    if crypto.ComputeEntropy(L15_15) == 0 then
      L9_9 = L9_9 + 1
    end
  end
  if L9_9 == 3 then
    return L10_10
  end
end
L9_9 = mp
L9_9 = L9_9.CLEAN
return L9_9
