local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.QueryPersistContext
L2_2 = L0_0
L3_3 = "RunsDestructiveCMDsParentBlock"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.IsHipsRuleEnabled
  L2_2 = "c1db55ab-c21a-4637-bb3f-a12568109d35"
  L1_1 = L1_1(L2_2)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.INFECTED
    return L1_1
  else
    L1_1 = mp
    L1_1 = L1_1.ReportLowfi
    L2_2 = L0_0
    L3_3 = 3371538283
    L1_1(L2_2, L3_3)
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = MpCommon
L1_1 = L1_1.QueryPersistContext
L2_2 = L0_0
L3_3 = "RunsDestructiveCMDsParent"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = -1
L2_2 = -1
L3_3 = MpCommon
L3_3 = L3_3.GetPersistContext
L8_8 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L4_4(L5_5))
if L3_3 ~= nil then
  for L7_7, L8_8 in L4_4(L5_5) do
    if tonumber(string.match(L8_8, "^Age:([0-9]+)$")) ~= nil and L1_1 < tonumber(string.match(L8_8, "^Age:([0-9]+)$")) then
      L1_1 = tonumber(string.match(L8_8, "^Age:([0-9]+)$"))
    end
    if tonumber(string.match(L8_8, "^Prevalence:([0-9]+)$")) ~= nil and L2_2 < tonumber(string.match(L8_8, "^Prevalence:([0-9]+)$")) then
      L2_2 = tonumber(string.match(L8_8, "^Prevalence:([0-9]+)$"))
    end
  end
end
if L1_1 > -1 and L1_1 <= 1 and L2_2 > -1 and L2_2 <= 100 then
  if L4_4 == true then
    return L4_4
  else
    L4_4(L5_5, L6_6)
    return L4_4
  end
end
return L4_4
