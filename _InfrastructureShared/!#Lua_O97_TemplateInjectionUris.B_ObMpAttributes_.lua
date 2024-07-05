local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1536000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L11_11 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2(L3_3, L4_4))
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "_rels/"
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if not L2_2 then
  L2_2 = nil
  L3_3 = 0
  L4_4 = ""
  L5_5(L6_6)
  L8_8 = L0_0
  L11_11 = L6_6(L7_7, L8_8)
  L2_2 = L5_5
  for L8_8 in L5_5(L6_6, L7_7) do
    L10_10 = L8_8
    L9_9 = L8_8.match
    L11_11 = "Type%S?=%S?\"[%w:/.]+/relationships/([%w/.]+)"
    L9_9 = L9_9(L10_10, L11_11)
    L11_11 = L8_8
    L10_10 = L8_8.match
    L10_10 = L10_10(L11_11, "Target%S?=%S?\"(http[^\"]+)")
    if L10_10 ~= nil and L9_9 ~= nil then
      L11_11 = string
      L11_11 = L11_11.lower
      L11_11 = L11_11(L10_10)
      L4_4 = L4_4 .. "\n" .. string.lower(L9_9) .. "->" .. L11_11
      L3_3 = L3_3 + 1
    end
  end
  if L3_3 > 1 then
    L8_8 = mp
    L8_8 = L8_8.ADD_VFO_TAKE_ACTION_ON_DAD
    L5_5(L6_6, L7_7, L8_8)
    return L5_5
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
