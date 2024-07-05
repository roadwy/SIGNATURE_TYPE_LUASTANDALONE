local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L4_4 = "\\programdata\\microsoft\\azurewatson\\0\\awdumpifeo.exe"
  L2_2 = L2_2(L3_3, L4_4, 1, true)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L4_4 = "\\windows\\system32\\werfault.exe"
    L2_2 = L2_2(L3_3, L4_4, 1, true)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L3_3 = L1_1
      L4_4 = "\\windows\\syswow64\\werfault.exe"
      L2_2 = L2_2(L3_3, L4_4, 1, true)
    end
  elseif L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L1_1 = mp
L1_1 = L1_1.GetScannedPPID
L1_1 = L1_1()
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 then
  L3_3 = #L2_2
elseif L3_3 <= 18 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = string
L3_3 = L3_3.match
L4_4 = L2_2
L3_3 = L3_3(L4_4, "[%-/]m[acdkmp] \"?([%d]+)\"?")
if not L3_3 then
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L2_2, "lsass.exe")
  if L4_4 then
    L4_4 = TrackPidAndTechnique
    L4_4("CMDHSTR", "T1003.001", "credentialdumping_concrete", 86400)
    L4_4 = mp
    L4_4 = L4_4.INFECTED
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = tonumber
L4_4 = L4_4(L3_3)
L3_3 = L4_4
L4_4 = mp
L4_4 = L4_4.GetPPidFromPid
L4_4 = L4_4(L3_3)
if not MpCommon.GetImagePathFromPid(L4_4) then
  return mp.CLEAN
end
if string.find(MpCommon.GetImagePathFromPid(L4_4):lower(), "\\windows\\system32\\lsass.exe", 1, true) then
  TrackPidAndTechnique("CMDHSTR", "T1003.001", "credentialdumping_concrete", 86400)
  return mp.INFECTED
end
return mp.CLEAN
