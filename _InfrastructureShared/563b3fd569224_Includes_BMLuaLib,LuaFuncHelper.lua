local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L1_1 = false
L2_2 = this_sigattrlog
L2_2 = L2_2[12]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[12]
  L0_0 = L2_2.utf8p1
end
L2_2 = this_sigattrlog
L2_2 = L2_2[13]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[13]
  L0_0 = L2_2.utf8p1
end
L2_2 = this_sigattrlog
L2_2 = L2_2[14]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[14]
  L0_0 = L2_2.utf8p1
end
L2_2 = this_sigattrlog
L2_2 = L2_2[15]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[15]
  L0_0 = L2_2.utf8p1
end
L2_2 = this_sigattrlog
L2_2 = L2_2[16]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[16]
  L0_0 = L2_2.utf8p1
  L1_1 = true
end
L2_2 = this_sigattrlog
L2_2 = L2_2[17]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[17]
  L0_0 = L2_2.utf8p1
  L1_1 = true
end
L2_2 = this_sigattrlog
L2_2 = L2_2[18]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[18]
  L0_0 = L2_2.utf8p1
  L1_1 = true
end
L2_2 = this_sigattrlog
L2_2 = L2_2[19]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[19]
  L0_0 = L2_2.utf8p1
  L1_1 = true
end
L2_2 = IsSenseRelatedProc
L2_2 = L2_2()
if L2_2 == true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = GetRollingQueueKeys
L3_3 = "TamperingAlerts_LimitedSet_A"
L2_2 = L2_2(L3_3)
L3_3 = GetRollingQueueKeys
L4_4 = "RemotDropped_Malware"
L3_3 = L3_3(L4_4)
L4_4 = 7200
L5_5 = 5
if L1_1 == true then
  L6_6 = AppendToRollingQueue
  L10_10 = L4_4
  L11_11 = L5_5
  L6_6(L7_7, L8_8, L9_9, L10_10, L11_11)
  if L3_3 ~= nil then
    L6_6 = "["
    for L10_10, L11_11 in L7_7(L8_8) do
      L6_6 = L6_6 .. L11_11
    end
    L6_6 = L7_7 .. L8_8
    L10_10 = bm
    L10_10 = L10_10.RelatedStringBMReport
    L7_7(L8_8, L9_9, L10_10)
    L10_10 = bm
    L10_10 = L10_10.RelatedStringBMReport
    L7_7(L8_8, L9_9, L10_10)
    L7_7()
    return L7_7
  end
else
  L6_6 = AppendToRollingQueue
  L10_10 = L4_4
  L11_11 = L5_5
  L6_6(L7_7, L8_8, L9_9, L10_10, L11_11)
  if L2_2 ~= nil then
    L6_6 = "["
    for L10_10, L11_11 in L7_7(L8_8) do
      L6_6 = L6_6 .. L11_11
    end
    L6_6 = L7_7 .. L8_8
    L10_10 = bm
    L10_10 = L10_10.RelatedStringBMReport
    L7_7(L8_8, L9_9, L10_10)
    L10_10 = bm
    L10_10 = L10_10.RelatedStringBMReport
    L7_7(L8_8, L9_9, L10_10)
    L7_7()
    return L7_7
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
