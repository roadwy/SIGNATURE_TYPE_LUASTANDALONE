local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
function L0_0(A0_6, A1_7, A2_8)
  if mp.GetParentProcInfo(A0_6) == nil then
    return
  end
  A0_6 = mp.GetParentProcInfo(A0_6).ppid
  if A0_6 == nil then
    return
  end
  TrackPidAndTechniqueBM(A0_6, A1_7, A2_8)
  return
end
propagateTTParent = L0_0
function L0_0(A0_9, A1_10)
  local L2_11, L3_12, L4_13, L5_14, L6_15, L7_16, L8_17, L9_18
  L2_11 = {L3_12, L4_13}
  L6_15 = "/opt/microsoft/omsagent/bin/omsadmin.sh"
  for L6_15, L7_16 in L3_12(L4_13) do
    L8_17 = L7_16[1]
    L9_18 = L7_16[2]
    if string.find(A0_9, L8_17, 1, true) and string.find(A1_10, L9_18, 1, true) then
      return true
    end
  end
  return L3_12
end
isProcessExcluded = L0_0
L0_0, L1_1, L2_2, L3_3 = nil, nil, nil, nil
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L0_0 = L4_4.utf8p1
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L1_1 = L4_4.utf8p2
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L2_2 = L4_4.ppid
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L3_3 = L4_4.image_path
end
L4_4 = mp
L4_4 = L4_4.GetProcessCommandLine
L5_5 = L2_2
L4_4 = L4_4(L5_5)
if not L0_0 or not L1_1 or not L2_2 or not L3_3 or not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.match
L5_5 = L5_5(L0_0, "T%d%d%d%d")
if not L5_5 or L1_1 == "INFECTED" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = isProcessExcluded
L5_5 = L5_5(L3_3, L4_4)
if L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {
  "Execution_SuspiciousProcessLaunch",
  "Execution_SuspiciousCommandline"
}
for _FORV_9_, _FORV_10_ in ipairs(L5_5) do
  if L1_1 == _FORV_10_ then
    return mp.CLEAN
  end
end
if IsDetectionThresholdMetLinux(L2_2) then
  bm.trigger_sig("SuspiciousTTRel", "Detected")
  return mp.CLEAN
end
propagateTTParent(L2_2, L0_0, L1_1)
return mp.CLEAN
