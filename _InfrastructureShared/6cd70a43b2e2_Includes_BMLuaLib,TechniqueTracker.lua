local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {L2_2, L3_3}
L2_2 = {L3_3, L4_4}
L3_3 = "/usr/bin/make"
L4_4 = ""
L3_3 = {L4_4, L5_5}
L4_4 = "/usr/bin/ninja"
L2_2 = isParentPackageManager
L3_3 = L0_0
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = checkParentCmdline
  L3_3 = L0_0
  L4_4 = L1_1
  L2_2 = L2_2(L3_3, L4_4, L5_5)
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = TrackPidAndTechnique
  L4_4 = L2_2.ppid
  L3_3(L4_4, L5_5, L6_6)
end
L3_3 = mp
L3_3 = L3_3.GetProcessCommandLine
L4_4 = L0_0
L3_3 = L3_3(L4_4)
if L3_3 then
  L4_4 = mp
  L4_4 = L4_4.GetExecutablesFromCommandLine
  L4_4 = L4_4(L5_5)
  if L4_4 ~= nil then
    for L8_8, L9_9 in L5_5(L6_6) do
      if sysio.IsFileExists(L9_9) then
        taint(L9_9, "suid_file_taint", 3600)
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.LOWFI
return L4_4
