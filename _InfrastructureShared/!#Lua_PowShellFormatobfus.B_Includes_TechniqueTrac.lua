local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "psdeobfus-stg1"
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if not L1_1 then
  L2_2 = L0_0
  L1_1 = L0_0.find
  L3_3 = "deobfus"
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
elseif L1_1 then
  L2_2 = L0_0
  L1_1 = L0_0.find
  L3_3 = "psdeobfus-stg2"
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  function L1_1(A0_19)
    return A0_19:gsub("[%(%)%.%%%+%-%*%?%[%]%^%$]", function(A0_20)
      return "%" .. A0_20
    end)
  end
  escape_word = L1_1
  L1_1 = mp
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
  if L1_1 > 200000 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.readprotection
  L3_3 = false
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.readfile
  L3_3 = 0
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 == nil or L2_2 == "" then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = 0
  for L7_7, L8_8 in L4_4(L5_5, L6_6) do
    L9_9 = L7_7
    L10_10 = "-f"
    L9_9 = L9_9 .. L10_10 .. L11_11
    L10_10 = {}
    for L14_14 in L11_11(L12_12, L13_13) do
      L16_16 = L10_10
      L17_17 = tonumber
      L18_18 = L14_14
      L17_17 = L17_17(L18_18)
      L17_17 = L17_17 + 1
      L15_15(L16_16, L17_17)
    end
    for L15_15 in L12_12(L13_13, L14_14) do
      L16_16 = table
      L16_16 = L16_16.insert
      L17_17 = L11_11
      L18_18 = L15_15
      L16_16(L17_17, L18_18)
    end
    if L12_12 == L13_13 then
      for L16_16, L17_17 in L13_13(L14_14) do
        L18_18 = L11_11[L17_17]
        L7_7 = pcall(string.gsub, L7_7, "{" .. L17_17 - 1 .. "}", L18_18)
      end
      if L12_12 then
        L3_3 = L3_3 + 1
        L9_9 = L13_13
        L16_16 = L7_7
        L2_2 = L13_13
      end
    end
  end
  if L3_3 >= 3 then
    L7_7 = mp
    L7_7 = L7_7.ADD_VFO_TAKE_ACTION_ON_DAD
    L4_4(L5_5, L6_6, L7_7)
    return L4_4
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
