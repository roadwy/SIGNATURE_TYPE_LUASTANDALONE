local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
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
  L4_4
}
L2_2 = {L3_3, L4_4}
L3_3 = "cmd.exe"
L4_4 = "WindowsDefenderATPOnboardingScript.cmd"
L3_3 = {L4_4, L5_5}
L4_4 = ""
L5_5 = "Onboarding"
L4_4 = {L5_5, L6_6}
L5_5 = "powershell.exe"
L6_6 = "Microsoft\\Windows Defender Advanced Threat Protection\\"
L2_2 = checkParentCmdline
L3_3 = L0_0.ppid
L4_4 = L1_1
L5_5 = 2
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 == true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[12]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[12]
  L2_2 = L3_3.utf8p1
end
L3_3 = this_sigattrlog
L3_3 = L3_3[13]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[13]
  L2_2 = L3_3.utf8p1
end
L3_3 = this_sigattrlog
L3_3 = L3_3[14]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[14]
  L2_2 = L3_3.utf8p1
end
L3_3 = this_sigattrlog
L3_3 = L3_3[15]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[15]
  L2_2 = L3_3.utf8p2
end
L3_3 = this_sigattrlog
L3_3 = L3_3[16]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[16]
  L2_2 = L3_3.utf8p2
end
L3_3 = this_sigattrlog
L3_3 = L3_3[17]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[17]
  L2_2 = L3_3.utf8p2
end
L3_3 = false
L4_4 = MpCommon
L4_4 = L4_4.StringRegExpSearch
L5_5 = "(Block|RTP|GpDisable|Srv)"
L6_6 = L2_2
L5_5 = L4_4(L5_5, L6_6)
_ = L5_5
L3_3 = L4_4
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = 7200
L5_5 = 100
L6_6 = AppendToRollingQueue
L7_7 = "TamperingAlerts"
L6_6(L7_7, L8_8, L9_9, L10_10, L11_11)
L6_6 = GetRollingQueueKeys
L7_7 = "ThreatsOnMachine_Lua"
L6_6 = L6_6(L7_7)
if L6_6 ~= nil then
  L7_7 = type
  L7_7 = L7_7(L8_8)
  if L7_7 == "table" then
    L7_7 = "["
    for L11_11, L12_12 in L8_8(L9_9) do
      L13_13 = L7_7
      L14_14 = "|"
      L7_7 = L13_13 .. L14_14 .. L12_12
    end
    L7_7 = L8_8 .. L9_9
    if L7_7 ~= "[]" then
      L8_8(L9_9, L10_10, L11_11)
      L8_8(L9_9, L10_10, L11_11)
      L8_8()
      return L8_8
    end
  end
end
L7_7 = "["
if L8_8 ~= nil then
  if L9_9 == "table" then
    for L13_13, L14_14 in L10_10(L11_11) do
      L7_7 = L7_7 .. "|" .. L14_14
    end
    L7_7 = L10_10 .. L11_11
    if L9_9 < 3 then
      return L10_10
    end
    L13_13 = bm
    L13_13 = L13_13.RelatedStringBMReport
    L10_10(L11_11, L12_12, L13_13)
    L10_10()
    return L10_10
  end
end
return L9_9
