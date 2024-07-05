local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "c1db55ab-c21a-4637-bb3f-a12568109d35"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.IsKnownFriendlyFile
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = true
L1_1 = L1_1(L2_2, L3_3, L4_4)
if L1_1 == true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.QueryPersistContext
L2_2 = L0_0
L3_3 = "RansomExtensionParentBlock"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.QueryPersistContext
L2_2 = L0_0
L3_3 = "RansomExtensionParent"
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
L3_3 = L3_3(L4_4)
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
  return L4_4
end
return L4_4
