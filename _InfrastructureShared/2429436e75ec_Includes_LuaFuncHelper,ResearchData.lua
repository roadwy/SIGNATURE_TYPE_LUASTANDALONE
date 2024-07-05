local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "MpIsPowerShellAMSIScan"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L1_1 = "SuspTamperingScript"
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = ""
L2_2 = L0_0.is_header
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = tostring
  L4_4 = headerpage
  L13_13 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L3_3(L4_4))
  L1_1 = L2_2
else
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = tostring
  L4_4 = footerpage
  L13_13 = L3_3(L4_4)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L3_3(L4_4))
  L1_1 = L2_2
end
if L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.StringRegExpSearch
L3_3 = "((?:set|add)-mppreference\\s+-exclusion.+?(?:;|\\||<|>|$))"
L4_4 = L1_1.sub
L13_13 = L4_4(L5_5, L6_6)
L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L4_4(L5_5, L6_6))
if L2_2 then
  L4_4 = mp
  L4_4 = L4_4.getfilename
  L4_4 = L4_4()
  L8_8 = ""
  L4_4 = L5_5
  L8_8 = ";"
  for L8_8, L9_9 in L5_5(L6_6, L7_7) do
    L13_13 = 2
    if L10_10 == "@(" then
      L9_9 = L10_10
    end
    for L13_13 in L10_10(L11_11, L12_12) do
      L13_13 = L13_13:match("^%s*(.-)%s*$")
      if L13_13:sub(1, 1) == "'" or L13_13:sub(1, 1) == "\"" then
        L13_13 = L13_13:match("^['\"](.-)['\"]")
      else
        L13_13 = L13_13:match("^%S+")
      end
      if L13_13:sub(1, 5) == "$env:" then
        L13_13 = "%" .. L13_13:sub(6) .. "%"
      end
      AppendToRollingQueue("WDAVExclusion", L4_4, L8_8 .. "|" .. L13_13, 3600, 100, 0)
    end
  end
  L8_8 = "WDAVExclusion"
  L9_9 = L4_4
  L6_6(L7_7, L8_8, L9_9)
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
