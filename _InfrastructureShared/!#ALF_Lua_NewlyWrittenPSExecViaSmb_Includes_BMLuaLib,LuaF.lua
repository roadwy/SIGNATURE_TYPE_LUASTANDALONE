local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_PATH
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L7_7 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L1_1(L2_2, L3_3))
if not L0_0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.Base64Encode
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = GetRollingQueueKeyValue
L4_4 = "rq_fileremotedrop"
L5_5 = L2_2
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L5_5 = L0_0
L4_4 = L4_4(L5_5)
L0_0 = L4_4
if L0_0 == "" or L0_0 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.GetOriginalFileName
L5_5 = L0_0
L4_4 = L4_4(L5_5)
L5_5 = false
if L4_4 == "psexesvc.exe" or L4_4 == "psexec.c" then
  L5_5 = true
  L6_6 = AppendToRollingQueue
  L7_7 = "renamed_psexec"
  L6_6(L7_7, L3_3, L2_2, 600, 1)
end
if not L5_5 then
  L6_6 = GetRollingQueueKeyValue
  L7_7 = "renamed_psexec"
  L6_6 = L6_6(L7_7, L3_3)
  if L6_6 == L2_2 then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7 = {
    "\\windows\\temp\\ot-",
    "systeminsights.capabilities.anomalydetection"
  }
  if contains(L0_0, L7_7) then
    return mp.CLEAN
  end
  if ({
    ["c:\\programdata"] = true,
    ["c:\\perflogs"] = true,
    ["c:\\windows\\help"] = true,
    ["c:\\windows\\debug"] = true,
    ["c:\\windows\\tapi"] = true,
    ["c:\\windows\\temp"] = true,
    ["c:\\intel"] = true,
    ["c:\\users\\public"] = true
  })[L0_0] then
    return mp.INFECTED
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
