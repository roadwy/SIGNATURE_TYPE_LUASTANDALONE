local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
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
L2_2 = L2_2(L3_3, "-processId \"?([%d]+)\"?")
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tonumber
L3_3 = L3_3(L2_2)
L2_2 = L3_3
L3_3 = mp
L3_3 = L3_3.GetPPidFromPid
L3_3 = L3_3(L2_2)
if not MpCommon.GetImagePathFromPid(L3_3) then
  return mp.CLEAN
end
if string.find(MpCommon.GetImagePathFromPid(L3_3):lower(), "\\windows\\system32\\lsass.exe", 1, true) then
  TrackPidAndTechnique("CMDHSTR", "T1003.001", "credentialdumping_concrete", 86400)
  return mp.INFECTED
end
return mp.CLEAN
