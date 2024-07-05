local L0_0, L1_1, L2_2, L3_3
L0_0 = IsSenseRelatedProc
L0_0 = L0_0()
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {
  L2_2,
  L3_3,
  {
    "powershell.exe",
    "Microsoft\\Windows Defender Advanced Threat Protection\\"
  }
}
L2_2 = {
  L3_3,
  "WindowsDefenderATPOnboardingScript.cmd"
}
L3_3 = ""
L3_3 = {"", "Onboarding"}
L2_2 = checkParentCmdline
L3_3 = L0_0.ppid
L2_2 = L2_2(L3_3, L1_1, 2)
if L2_2 == true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
L3_3 = false
_, L3_3 = pcall(MpCommon.QuerySessionInformation, L2_2.ppid, MpCommon.WTSIsRemoteSession)
if not L3_3 then
  return mp.CLEAN
end
reportSessionInformationInclusive()
add_parents()
return mp.INFECTED
