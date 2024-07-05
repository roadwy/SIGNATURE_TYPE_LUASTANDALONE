local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = false
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L1_1 = L1_1()
if L1_1 then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1.image_path
  L2_2 = L2_2(L3_3)
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L5_5 = "\\programdata\\microsoft\\azurewatson\\0\\awdumpifeo.exe"
  L3_3 = L3_3(L4_4, L5_5, 1, true)
  if not L3_3 then
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L2_2
    L5_5 = "\\windows\\system32\\werfault.exe"
    L3_3 = L3_3(L4_4, L5_5, 1, true)
    if not L3_3 then
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L2_2
      L5_5 = "\\windows\\syswow64\\werfault.exe"
      L3_3 = L3_3(L4_4, L5_5, 1, true)
    end
  elseif L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L2_2 = hstrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if not L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[5]
  L2_2 = L2_2.matched
elseif L2_2 then
  L0_0 = true
end
if not L0_0 then
  L2_2 = hstrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.matched
  if not L2_2 then
    L2_2 = hstrlog
    L2_2 = L2_2[7]
    L2_2 = L2_2.matched
  elseif L2_2 then
    L2_2 = mp
    L2_2 = L2_2.GetScannedPPID
    L2_2 = L2_2()
    if not L2_2 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = mp
    L3_3 = L3_3.GetProcessCommandLine
    L4_4 = L2_2
    L3_3 = L3_3(L4_4)
    if L3_3 then
      L4_4 = #L3_3
    elseif L4_4 <= 18 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = L3_3
    L4_4 = L4_4(L5_5)
    L3_3 = L4_4
    L4_4 = string
    L4_4 = L4_4.match
    L5_5 = L3_3
    L4_4 = L4_4(L5_5, "[%-/]m[acdkmp] \"?([%d]+)\"?")
    if not L4_4 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = tonumber
    L5_5 = L5_5(L4_4)
    L4_4 = L5_5
    L5_5 = mp
    L5_5 = L5_5.GetPPidFromPid
    L5_5 = L5_5(L4_4)
    if not MpCommon.GetImagePathFromPid(L5_5) then
      return mp.CLEAN
    end
    if string.find(MpCommon.GetImagePathFromPid(L5_5):lower(), "\\local\\microsoft\\onedrive\\onedrive.exe", 1, true) then
      L0_0 = true
    end
  end
end
if L0_0 then
  L2_2 = TrackPidAndTechnique
  L3_3 = "CMDHSTR"
  L4_4 = "T1003.001"
  L5_5 = "credentialdumping"
  L2_2(L3_3, L4_4, L5_5, 86400)
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
