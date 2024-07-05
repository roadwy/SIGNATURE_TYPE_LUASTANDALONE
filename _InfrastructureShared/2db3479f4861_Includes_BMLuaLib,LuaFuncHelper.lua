local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.ppid
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p2
L1_1 = L1_1 or ""
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
L2_2 = L2_2 or "NO_IMG_PATH"
L3_3 = L0_0.ppid
L4_4 = L0_0.cmd_line
L4_4 = L4_4 or "NO_CMD_LINE"
L5_5 = MpCommon
L5_5 = L5_5.Base64Encode
L6_6 = L2_2
L7_7 = "|"
L6_6 = L6_6 .. L7_7 .. L4_4
L5_5 = L5_5(L6_6)
L6_6 = ";"
L7_7 = L1_1
L5_5 = L5_5 .. L6_6 .. L7_7 .. ";" .. L3_3
L6_6 = "RemoteInvocation:DCOM.MMC20|"
L7_7 = MpCommon
L7_7 = L7_7.Base64Encode
L7_7 = L7_7(L2_2)
L6_6 = L6_6 .. L7_7
L7_7 = reportSessionInformationInclusive
L7_7 = L7_7()
AppendToRollingQueue(L6_6, L3_3, safeJsonSerialize(L7_7), 3600, 100, 1)
recursiveTriggerSig("RemoteInvocation:DCOM.MMC20", L5_5, L3_3, 0)
reportRelevantUntrustedEntities()
reportTimingData()
pcall(bm.ignore_process_start_limits)
return mp.INFECTED
