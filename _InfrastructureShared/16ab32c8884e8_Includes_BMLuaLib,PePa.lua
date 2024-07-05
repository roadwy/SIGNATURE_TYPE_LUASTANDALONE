local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.ignore_process_start_limits
L0_0()
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[3]
      L2_2 = L2_2.utf8p1
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[4]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L0_0 = L1_1
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = string
          L1_1 = L1_1.lower
          L2_2 = this_sigattrlog
          L2_2 = L2_2[5]
          L2_2 = L2_2.utf8p1
          L1_1 = L1_1(L2_2)
          L0_0 = L1_1
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = string
            L1_1 = L1_1.lower
            L2_2 = this_sigattrlog
            L2_2 = L2_2[6]
            L2_2 = L2_2.utf8p1
            L1_1 = L1_1(L2_2)
            L0_0 = L1_1
          end
        end
      end
    end
  end
end
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "([^\\]+)$"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
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
  if not L3_3 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = L3_3.FileVersion
  L5_5 = "app_version_"
  L6_6 = L1_1
  L5_5 = L5_5 .. L6_6
  L6_6 = 31536000
  L7_7 = 50
  if L4_4 ~= nil then
    L8_8 = Version_to_str
    L8_8 = L8_8(L4_4)
    AppendToRollingQueue(L5_5, L0_0, L8_8, L6_6, L7_7)
    bm.add_related_string("AppVersion", L8_8, bm.RelatedStringBMReport)
    if L3_3.OriginalFilename then
      bm.add_related_string("OFN", L3_3.OriginalFilename, bm.RelatedStringBMReport)
    end
  end
else
  L3_3 = bm
  L3_3 = L3_3.add_related_string
  L4_4 = "AppVersion"
  L5_5 = L2_2
  L6_6 = bm
  L6_6 = L6_6.RelatedStringBMReport
  L3_3(L4_4, L5_5, L6_6)
end
L3_3 = GetRollingQueueKeyValue
L4_4 = "app_version_timer"
L5_5 = L1_1
L4_4 = L4_4 .. L5_5
L5_5 = L0_0
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = MpCommon
  L4_4 = L4_4.GetCurrentTimeT
  L4_4 = L4_4()
  L3_3 = L4_4
  L4_4 = "app_version_timer"
  L5_5 = L1_1
  L4_4 = L4_4 .. L5_5
  L5_5 = 31536000
  L6_6 = 50
  L7_7 = AppendToRollingQueue
  L8_8 = L4_4
  L7_7(L8_8, L0_0, L3_3, L5_5, L6_6)
  L7_7 = bm
  L7_7 = L7_7.add_related_string
  L8_8 = "VerLastSent"
  L7_7(L8_8, L3_3, bm.RelatedStringBMReport)
  L7_7 = mp
  L7_7 = L7_7.INFECTED
  return L7_7
end
L4_4 = MpCommon
L4_4 = L4_4.GetCurrentTimeT
L4_4 = L4_4()
L5_5 = L4_4 - L3_3
L5_5 = L5_5 / 60
L6_6 = L5_5 <= 21600
if L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = 31536000
L8_8 = 50
AppendToRollingQueue("app_version_timer" .. L1_1, L0_0, L4_4, L7_7, L8_8)
return mp.INFECTED
