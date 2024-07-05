local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = this_sigattrlog
L1_1 = L1_1[12]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[12]
  L0_0 = L1_1.utf8p1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[13]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[13]
  L0_0 = L1_1.utf8p1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[14]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[14]
  L0_0 = L1_1.utf8p1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[15]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[15]
  L0_0 = L1_1.utf8p1
end
L1_1 = IsSenseRelatedProc
L1_1 = L1_1()
if L1_1 == true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 7200
L2_2 = 5
L3_3 = AppendToRollingQueue
L4_4 = "TamperingAlerts_LimitedSet_B"
L8_8 = L2_2
L3_3(L4_4, L5_5, L6_6, L7_7, L8_8)
L3_3 = GetRollingQueueKeys
L4_4 = "ThreatsOnMachine_Lua"
L3_3 = L3_3(L4_4)
if L3_3 ~= nil then
  L4_4 = "["
  for L8_8, L9_9 in L5_5(L6_6) do
    L4_4 = L4_4 .. "|" .. L9_9
  end
  L4_4 = L5_5 .. L6_6
  L8_8 = bm
  L8_8 = L8_8.RelatedStringBMReport
  L5_5(L6_6, L7_7, L8_8)
  L8_8 = bm
  L8_8 = L8_8.RelatedStringBMReport
  L5_5(L6_6, L7_7, L8_8)
  L5_5()
  return L5_5
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
