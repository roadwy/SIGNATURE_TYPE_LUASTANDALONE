local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = "default|current|lastKnownGood"
L1_1, L2_2 = nil, nil
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[3]
    L4_4 = L4_4.utf8p1
    L5_5 = L4_4
    L4_4 = L4_4.match
    L6_6 = "Select\\\\(%w+)"
    L16_16 = L4_4(L5_5, L6_6)
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L4_4(L5_5, L6_6))
    L1_1 = L3_3
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L0_0
    L5_5 = L1_1
    L6_6 = 1
    L7_7 = true
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
    if not L3_3 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L2_2 = L3_3.p2
    if not L2_2 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
  end
else
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = sysio
L3_3 = L3_3.RegOpenKey
L4_4 = "HKLM\\SYSTEM\\Select"
L3_3 = L3_3(L4_4)
L4_4 = nil
if L3_3 then
  L5_5 = sysio
  L5_5 = L5_5.GetRegValueAsDword
  L6_6 = L3_3
  L7_7 = L1_1
  L5_5 = L5_5(L6_6, L7_7)
  L4_4 = L5_5
  L5_5 = string
  L5_5 = L5_5.format
  L6_6 = "%03d"
  L7_7 = L4_4
  L5_5 = L5_5(L6_6, L7_7)
  L4_4 = L5_5
end
L5_5 = "hklm\\system\\controlset"
L6_6 = L4_4
L7_7 = "\\SERVICES\\"
L5_5 = L5_5 .. L6_6 .. L7_7
L6_6 = {}
L6_6.windefend = "(c:\\\\programdata|%programfiles%)\\\\microsoft\\\\windows defender\\\\platform\\\\[\\d\\.-]+\\\\msmpeng.exe"
L6_6.sense = "(c:\\\\program files|%programfiles%)\\\\windows defender advanced threat protection\\\\mssense.exe"
L6_6.wdfilter = "(c:\\\\windows\\\\)?system32\\\\drivers\\\\wd\\\\wdfilter.sys"
L6_6.wdboot = "(c:\\\\windows\\\\)?system32\\\\drivers\\\\wd\\\\wdboot.sys"
L7_7 = false
for L11_11, L12_12 in L8_8(L9_9) do
  L13_13 = L5_5
  L14_14 = L11_11
  L13_13 = L13_13 .. L14_14
  L14_14 = sysio
  L14_14 = L14_14.RegOpenKey
  L15_15 = L13_13
  L14_14 = L14_14(L15_15)
  if L14_14 then
    L15_15 = sysio
    L15_15 = L15_15.GetRegValueAsString
    L16_16 = L14_14
    L15_15 = L15_15(L16_16, "ImagePath")
    L16_16 = string
    L16_16 = L16_16.lower
    L16_16 = L16_16(L15_15)
    L15_15 = L16_16
    if L15_15 then
      L16_16 = MpCommon
      L16_16 = L16_16.StringRegExpSearch
      L16_16 = L16_16(L12_12, L15_15)
      if not L16_16 then
        bm.add_related_string("Evidence", L11_11 .. "|" .. L15_15, bm.RelatedStringBMReport)
        L7_7 = true
      end
    else
      L16_16 = bm
      L16_16 = L16_16.add_related_string
      L16_16("Evidence", L11_11 .. "|Empty", bm.RelatedStringBMReport)
      L16_16 = mp
      L16_16 = L16_16.INFECTED
      return L16_16
    end
    L16_16 = sysio
    L16_16 = L16_16.GetRegValueAsDword
    L16_16 = L16_16(L14_14, "Start")
    if L16_16 ~= 2 and L16_16 ~= 0 then
      bm.add_related_string("Evidence", L11_11 .. "|" .. L16_16, bm.RelatedStringBMReport)
      L7_7 = true
    end
  end
end
if L7_7 then
  if not L8_8 then
    return L9_9
  end
  L11_11 = AppendToRollingQueue
  L12_12 = "MpTamperRegKeyOldValues_ControlSet"
  L13_13 = L1_1
  L14_14 = L8_8
  L15_15 = L9_9
  L16_16 = L10_10
  L11_11(L12_12, L13_13, L14_14, L15_15, L16_16)
  L11_11 = mp
  L11_11 = L11_11.INFECTED
  return L11_11
end
return L8_8
