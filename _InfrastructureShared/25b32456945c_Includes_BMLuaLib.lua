local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextNoPath
L0_0 = L0_0(L1_1)
for L4_4, L5_5 in L1_1(L2_2) do
  sms_untrusted_process_pid(L5_5)
  add_parents(L5_5)
  reportSessionInformation()
  return mp.INFECTED
end
return L1_1
