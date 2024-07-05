local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "VSSAMSI_CallerPID"
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.get_mpattributevalue
L2_2 = "VSSAMSI_ProcessStartTime"
L1_1 = L1_1(L2_2)
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = true
L3_3 = false
L4_4, L5_5, L6_6 = nil, nil, nil
L7_7 = true
L8_8 = string
L8_8 = L8_8.format
L9_9 = "pid:%u,ProcessStart:%u"
L8_8 = L8_8(L9_9, L0_0, L1_1)
L9_9 = pcall
L2_2, L9_9 = MpCommon.IsFriendlyProcess(L8_8)
L7_7 = L9_9
if L7_7 == true and L2_2 == false then
  L9_9 = mp
  L9_9 = L9_9.GetProcessCommandLine
  L9_9 = L9_9(L8_8)
  mp.set_mpattribute(string.format("MpInternal_researchdata=VSSUntrustedCaller=%s", L9_9))
  TrackPidAndTechnique("VSSAMSI", "T1490", "inhibit_system_recovery")
  return mp.INFECTED
end
L9_9 = 0
while L9_9 <= 5 do
  L7_7, L4_4 = pcall(mp.GetParentProcInfo, L0_0)
  if L7_7 ~= true or L4_4 == nil then
    break
  end
  L5_5 = L4_4.ppid
  if L5_5 == nil then
    break
  end
  L6_6 = L4_4.image_path
  if L6_6 == nil then
    break
  end
  L6_6 = string.lower(L6_6)
  L7_7, L3_3 = pcall(mp.IsKnownFriendlyFile(L6_6, true, false))
  if L7_7 == true and L3_3 == false then
    mp.set_mpattribute(string.format("MpInternal_researchdata=VSSUntrustedParent=%s", L6_6))
    TrackPidAndTechnique("VSSAMSI", "T1490", "inhibit_system_recovery")
    return mp.INFECTED
  end
  L9_9 = L9_9 + 1
end
return mp.CLEAN
