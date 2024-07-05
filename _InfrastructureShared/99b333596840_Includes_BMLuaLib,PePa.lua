local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
if L2_2 == nil then
  L3_3 = sysio
  L3_3 = L3_3.GetPEFixedVersionInfo
  L4_4 = L0_0
  L3_3 = L3_3(L4_4)
  if L3_3 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = "app_version_"
  L5_5 = L1_1
  L4_4 = L4_4 .. L5_5
  L5_5 = 31536000
  L6_6 = 50
  L7_7 = L3_3.FileVersion
  if L7_7 ~= 0 then
    L7_7 = Version_to_str
    L7_7 = L7_7(L3_3.FileVersion)
    AppendToRollingQueue(L4_4, L0_0, L7_7, L5_5, L6_6)
    bm.add_related_string("SQLVersion", L7_7, bm.RelatedStringBMReport)
  else
    L7_7 = bm
    L7_7 = L7_7.add_related_string
    L7_7("SQLVersion", "ERROR", bm.RelatedStringBMReport)
  end
else
  L3_3 = bm
  L3_3 = L3_3.add_related_string
  L4_4 = "SQLVersion"
  L5_5 = L2_2
  L6_6 = bm
  L6_6 = L6_6.RelatedStringBMReport
  L3_3(L4_4, L5_5, L6_6)
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
