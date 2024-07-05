local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p2
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.lower
L2_2 = MpCommon
L2_2 = L2_2.ExpandEnvironmentVariables
L3_3 = "%WINDIR%\\SYSTEM32\\"
L12_12 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L2_2(L3_3))
L3_3 = L0_0
L2_2 = L0_0.find
L4_4 = L1_1
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = versioning
L2_2 = L2_2.GetOsBuildNumber
L2_2 = L2_2()
L3_3 = versioning
L3_3 = L3_3.GetOsBuildMin
L3_3 = L3_3()
if L2_2 < 19044 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L2_2 == 19044 and L3_3 < 1826 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = sysio
L4_4 = L4_4.GetPEFixedVersionInfo
L5_5 = L0_0
L4_4 = L4_4(L5_5)
L5_5 = L4_4.FileVersion
L6_6 = crypto
L6_6 = L6_6.shr64
L7_7 = L5_5
L8_8 = 48
L6_6 = L6_6(L7_7, L8_8)
L7_7 = crypto
L7_7 = L7_7.bitand
L8_8 = crypto
L8_8 = L8_8.shr64
L9_9 = L5_5
L10_10 = 32
L8_8 = L8_8(L9_9, L10_10)
L9_9 = 65535
L7_7 = L7_7(L8_8, L9_9)
L8_8 = crypto
L8_8 = L8_8.bitand
L9_9 = crypto
L9_9 = L9_9.shr64
L10_10 = L5_5
L11_11 = 16
L9_9 = L9_9(L10_10, L11_11)
L10_10 = 65535
L8_8 = L8_8(L9_9, L10_10)
L9_9 = crypto
L9_9 = L9_9.bitand
L10_10 = L5_5
L11_11 = 65535
L9_9 = L9_9(L10_10, L11_11)
if L6_6 >= 10 and L7_7 >= 0 and L8_8 > 19044 then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
if L6_6 >= 10 and L7_7 >= 0 and L8_8 == 19044 and L9_9 >= 1826 then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = sysio
L10_10 = L10_10.GetPEVersionInfo
L11_11 = L0_0
L10_10 = L10_10(L11_11)
if not L10_10 then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = L10_10.OriginalFilename
if not L11_11 or L11_11 ~= "ntdll.dll" then
  L12_12 = mp
  L12_12 = L12_12.CLEAN
  return L12_12
end
L12_12 = tostring
L12_12 = L12_12(L6_6)
L12_12 = L12_12 .. "." .. tostring(L7_7) .. "." .. tostring(L8_8) .. "." .. tostring(L9_9)
bm.add_related_string("NTDLL version", L12_12, bm.RelatedStringBMReport)
return mp.INFECTED
