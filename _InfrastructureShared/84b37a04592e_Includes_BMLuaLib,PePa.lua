local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p1
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.utf8p1
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.utf8p1
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
end
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L0_0
L2_2 = L0_0.match
L4_4 = "(%w+%.exe)$"
L2_2 = L2_2(L3_3, L4_4)
L1_1 = L2_2
L2_2 = GetRollingQueueKeyValue
L3_3 = "app_version_"
L4_4 = L1_1
L3_3 = L3_3 .. L4_4
L4_4 = L0_0
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = sysio
L3_3 = L3_3.GetPEFixedVersionInfo
L4_4 = L0_0
L3_3 = L3_3(L4_4)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L3_3.FileVersion
L5_5 = sysio
L5_5 = L5_5.GetPEVersionInfo
L6_6 = L0_0
L5_5 = L5_5(L6_6)
if not L5_5 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = L5_5.OriginalFilename
if L4_4 == 0 or not L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = "app_version_"
L8_8 = L6_6
L7_7 = L7_7 .. L8_8
L8_8 = 31536000
L9_9 = 50
L10_10 = Version_to_str
L10_10 = L10_10(L4_4)
AppendToRollingQueue(L7_7, L0_0, L10_10, L8_8, L9_9)
bm.add_related_string("AppVersionFixed", L10_10, bm.RelatedStringBMReport)
return mp.INFECTED
