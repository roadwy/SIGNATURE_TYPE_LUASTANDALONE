local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L1_1 = "Startup"
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L0_0 = L2_2.utf8p1
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L1_1 = "Shutdown"
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p1
  end
end
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L0_0
L4_4 = 1
L5_5 = "\\parameters"
L5_5 = #L5_5
L5_5 = -L5_5
L5_5 = L5_5 - 2
L2_2 = L2_2(L3_3, L4_4, L5_5)
L0_0 = L2_2
L2_2 = sysio
L2_2 = L2_2.RegOpenKey
L4_4 = L0_0
L3_3 = L0_0.match
L5_5 = "(.+)\\%x+"
L13_13 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L3_3(L4_4, L5_5))
L3_3 = sysio
L3_3 = L3_3.GetRegValueAsString
L4_4 = L2_2
L5_5 = "FileSysPath"
L3_3 = L3_3(L4_4, L5_5)
L4_4 = sysio
L4_4 = L4_4.GetRegValueAsString
L5_5 = L2_2
L6_6 = "GPOName"
L4_4 = L4_4(L5_5, L6_6)
L5_5 = L4_4
L4_4 = L4_4.lower
L4_4 = L4_4(L5_5)
L5_5 = parseGpoSysvolPath
L6_6 = L3_3
L6_6 = L5_5(L6_6)
if L4_4 ~= L6_6 then
  L7_7 = bm
  L7_7 = L7_7.add_related_string
  L8_8 = "GPO-error"
  L9_9 = "guid mismatch between network FileSysPath and GPOName registry values"
  L10_10 = bm
  L10_10 = L10_10.RelatedStringBMReport
  L7_7(L8_8, L9_9, L10_10)
end
L7_7 = sysio
L7_7 = L7_7.RegOpenKey
L8_8 = L0_0
L7_7 = L7_7(L8_8)
L8_8 = sysio
L8_8 = L8_8.GetRegValueAsString
L9_9 = L7_7
L10_10 = "Script"
L8_8 = L8_8(L9_9, L10_10)
L9_9 = L3_3
L10_10 = "\\Scripts\\"
L11_11 = L1_1
L12_12 = "\\"
L13_13 = L8_8
L9_9 = L9_9 .. L10_10 .. L11_11 .. L12_12 .. L13_13
L10_10 = getGpoDataStorePath
L11_11 = L5_5
L12_12 = L4_4
L10_10 = L10_10(L11_11, L12_12)
if L10_10 == nil then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = L10_10
L12_12 = "\\Scripts\\"
L13_13 = L1_1
L11_11 = L11_11 .. L12_12 .. L13_13 .. "\\" .. L8_8
L12_12 = {}
L12_12["{31b2f340-016d-11d2-945f-00c04fb984f9}"] = "Default Domain Policy"
L12_12["{6ac1786c-016f-11d2-945f-00c04fb984f9}"] = "Default Domain Controllers Policy"
L13_13 = L12_12[L4_4]
if L13_13 then
  L13_13 = bm
  L13_13 = L13_13.add_related_string
  L13_13("GPO-script-suspicious", L12_12[L4_4], bm.RelatedStringBMReport)
end
L13_13 = sysio
L13_13 = L13_13.GetFileSize
L13_13 = L13_13(L11_11)
if GetRollingQueueKeyValue("GPO-Script-LocalPath-Current", L11_11) ~= L13_13 then
  AppendToRollingQueue("GPO-Script-NetworkPath-History", L9_9, L13_13, 604800, 300, 0)
  AppendToRollingQueue("GPO-Script-LocalPath-History", L11_11, L13_13, 604800, 300, 0)
  AppendToRollingQueue("GPO-Script-LocalPath-Current", L11_11, L13_13, 604800, 300, 1)
  bm.add_related_file(L11_11)
end
return mp.INFECTED
