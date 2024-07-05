local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L1_1 = L1_1 or "NO_IMG_PATH"
L2_2 = L0_0.ppid
L3_3 = L0_0.cmd_line
L3_3 = L3_3 or "NO_CMD_LINE"
L4_4 = MpCommon
L4_4 = L4_4.Base64Encode
L5_5 = L1_1
L6_6 = "|"
L5_5 = L5_5 .. L6_6 .. L3_3
L4_4 = L4_4(L5_5)
L5_5 = ";"
L6_6 = L2_2
L4_4 = L4_4 .. L5_5 .. L6_6
L5_5 = "RemoteInvocation:WINRM|"
L6_6 = MpCommon
L6_6 = L6_6.Base64Encode
L6_6 = L6_6(L1_1)
L5_5 = L5_5 .. L6_6
L6_6 = reportSessionInformationInclusive
L6_6 = L6_6()
AppendToRollingQueue(L5_5, L2_2, safeJsonSerialize(L6_6), 3600, 100, 1)
recursiveTriggerSig("RemoteInvocation:WINRM", L4_4, L2_2, 0)
reportRelevantUntrustedEntities()
reportTimingData()
pcall(bm.ignore_process_start_limits)
return mp.INFECTED
