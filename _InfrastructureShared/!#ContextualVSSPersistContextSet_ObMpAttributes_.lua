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
L2_2 = nil
L3_3 = string
L3_3 = L3_3.format
L4_4 = "pid:%d,ProcessStart:%u"
L3_3 = L3_3(L4_4, L0_0, L1_1)
L4_4 = mp
L4_4 = L4_4.GetProcessCommandLine
L4_4 = L4_4(L3_3)
L2_2 = L4_4
if L2_2 ~= nil then
  L4_4 = {}
  table.insert(L4_4, L3_3)
  if MpCommon.GetPersistContextCountNoPath("vssamsipid") > 0 then
    MpCommon.OverwritePersistContextNoPath("vssamsipid", L4_4, 120)
  else
    MpCommon.SetPersistContextNoPath("vssamsipid", L4_4, 120)
  end
  return mp.INFECTED
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
