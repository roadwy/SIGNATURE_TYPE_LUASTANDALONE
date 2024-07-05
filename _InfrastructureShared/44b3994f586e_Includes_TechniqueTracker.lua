local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 ~= nil then
  L1_1 = #L0_0
elseif L1_1 < 12 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetExecutablesFromCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = nil
if L1_1 then
  for L6_6, L7_7 in L3_3(L4_4) do
    if string.find(L7_7, ":\\users\\", 1, true) and MpCommon.QueryPersistContext(L7_7, "SystemDropToUserProfile.A") then
      L2_2 = L7_7
      break
    end
  end
end
if L2_2 ~= nil then
elseif L3_3 < 12 then
  return L3_3
end
L6_6 = "wmic.exe"
L6_6 = L3_3
if L4_4 then
  return L4_4
end
return L4_4
