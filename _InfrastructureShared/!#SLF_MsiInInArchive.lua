local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L11_11 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
elseif L1_1 < 5 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.sub
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == ".msi" then
  L2_2 = {}
  L2_2[".zip->"] = "%.zip%->.+"
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = string
    L8_8 = L8_8.find
    L9_9 = L0_0
    L10_10 = L6_6
    L11_11 = 1
    L8_8 = L8_8(L9_9, L10_10, L11_11, true)
    if L8_8 then
      L8_8 = string
      L8_8 = L8_8.match
      L9_9 = L0_0
      L10_10 = L7_7
      L8_8 = L8_8(L9_9, L10_10)
      if L8_8 ~= nil then
        L10_10 = L8_8
        L9_9 = L8_8.len
        L9_9 = L9_9(L10_10)
      elseif L9_9 < 12 then
        L9_9 = mp
        L9_9 = L9_9.CLEAN
        return L9_9
      end
      L10_10 = L6_6
      L9_9 = L6_6.len
      L9_9 = L9_9(L10_10)
      L9_9 = L9_9 + 1
      L10_10 = L9_9 + 5
      L11_11 = L8_8.len
      L11_11 = L11_11(L8_8)
      if L10_10 >= L11_11 then
        L10_10 = mp
        L10_10 = L10_10.CLEAN
        return L10_10
      end
      L10_10 = string
      L10_10 = L10_10.sub
      L11_11 = L8_8
      L10_10 = L10_10(L11_11, L9_9, -5)
      if L10_10 == nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L11_11 = L10_10
      L11_11 = L11_11 .. L6_6
      if string.find(L0_0, L11_11, 1, true) == nil then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
