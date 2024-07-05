local L0_0, L1_1, L2_2, L3_3, L4_4
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
L2_2, L3_3 = nil, nil
L4_4 = string
L4_4 = L4_4.format
L4_4 = L4_4("pid:%d,ProcessStart:%u", L0_0, L1_1)
L2_2 = mp.GetProcessCommandLine(L4_4)
if L2_2 ~= nil then
  mp.set_mpattribute(string.format("MpInternal_researchdata=VSSUntrustedCaller=%s", L2_2))
  L3_3 = mp.GetParentProcInfo(L4_4)
  if L3_3 ~= nil and L3_3.image_path ~= nil then
    mp.set_mpattribute(string.format("MpInternal_researchdata=VSSCallerParent=%s", L3_3.image_path))
  end
  return mp.INFECTED
end
return mp.CLEAN
