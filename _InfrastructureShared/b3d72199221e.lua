local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetImagePathFromPid
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "\\([^\\]+)$"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 ~= "bcdedit.exe" and L2_2 ~= "bootcfg.exe" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetParentProcInfo
L3_3 = L3_3()
if L3_3 == nil or L3_3 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L3_3.ppid
if L4_4 == nil or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L3_3.image_path
if L5_5 == nil or L5_5 == "" then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.lower
L7_7 = L5_5
L6_6 = L6_6(L7_7)
L5_5 = L6_6
L6_6 = string
L6_6 = L6_6.match
L7_7 = L5_5
L8_8 = "\\([^\\]+)$"
L6_6 = L6_6(L7_7, L8_8)
if L6_6 == nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
if L6_6 == "wmiprvse.exe" then
  L7_7 = mp
  L7_7 = L7_7.INFECTED
  return L7_7
elseif L6_6 == "cmd.exe" then
  L7_7 = mp
  L7_7 = L7_7.GetParentProcInfo
  L8_8 = L4_4
  L7_7 = L7_7(L8_8)
  if L7_7 == nil or L7_7 == "" then
    L8_8 = mp
    L8_8 = L8_8.CLEAN
    return L8_8
  end
  L8_8 = L7_7.image_path
  if L8_8 == nil or L8_8 == "" then
    return mp.CLEAN
  end
  L8_8 = string.lower(L8_8)
  if string.match(L8_8, "\\([^\\]+)$") == nil then
    return mp.CLEAN
  end
  if string.match(L8_8, "\\([^\\]+)$") == "wmiprvse.exe" then
    return mp.INFECTED
  end
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
