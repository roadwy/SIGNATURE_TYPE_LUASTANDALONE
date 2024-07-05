local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1["httpd.exe"] = true
L1_1["tomcat.exe"] = true
L1_1["nginx.exe"] = true
L2_2 = L0_0.OriginalFilename
L3_3 = L1_1[L2_2]
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L0_0.FileVersion
L4_4 = pe
L4_4 = L4_4.get_fixedversioninfo
L4_4 = L4_4()
L4_4 = L4_4.FileVersion
if L4_4 == nil or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
function L5_5(A0_11)
  local L1_12, L2_13, L3_14, L4_15
  L1_12 = crypto
  L1_12 = L1_12.shr64
  L2_13 = A0_11
  L3_14 = 48
  L1_12 = L1_12(L2_13, L3_14)
  L2_13 = crypto
  L2_13 = L2_13.bitand
  L3_14 = crypto
  L3_14 = L3_14.shr64
  L4_15 = A0_11
  L3_14 = L3_14(L4_15, 32)
  L4_15 = 65535
  L2_13 = L2_13(L3_14, L4_15)
  L3_14 = crypto
  L3_14 = L3_14.bitand
  L4_15 = crypto
  L4_15 = L4_15.shr64
  L4_15 = L4_15(A0_11, 16)
  L3_14 = L3_14(L4_15, 65535)
  L4_15 = crypto
  L4_15 = L4_15.bitand
  L4_15 = L4_15(A0_11, 65535)
  return tostring(L1_12) .. "." .. tostring(L2_13) .. "." .. tostring(L3_14) .. "." .. tostring(L4_15)
end
L6_6 = L5_5
L7_7 = L4_4
L6_6 = L6_6(L7_7)
L4_4 = L6_6
L6_6 = MpCommon
L6_6 = L6_6.PathToWin32Path
L7_7 = mp
L7_7 = L7_7.getfilename
L8_8 = mp
L8_8 = L8_8.FILEPATH_QUERY_FULL
L10_10 = L7_7(L8_8)
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L7_7(L8_8))
L7_7 = L6_6
L6_6 = L6_6.lower
L6_6 = L6_6(L7_7)
if L6_6 == nil or L6_6 == "" then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = "AppName:"
L8_8 = L2_2
L7_7 = L7_7 .. L8_8
L8_8 = "AppVersion:"
L9_9 = L4_4
L8_8 = L8_8 .. L9_9
L9_9 = "AppVersionStr:"
L10_10 = L3_3
L9_9 = L9_9 .. L10_10
L10_10 = {}
table.insert(L10_10, L7_7)
table.insert(L10_10, L8_8)
table.insert(L10_10, L9_9)
MpCommon.SetPersistContext(L6_6, L10_10, 0)
return mp.INFECTED
