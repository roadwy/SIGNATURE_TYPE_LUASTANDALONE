local L0_0, L1_1, L2_2
L0_0 = 10
L1_1 = 5
L2_2 = "ssh_login_attempt"
if MpCommon.AtomicCounterValue(L2_2) == nil then
  MpCommon.AtomicCounterSet(L2_2, 1, L0_0)
elseif L1_1 <= MpCommon.AtomicCounterAdd(L2_2, 1) + 1 then
  MpCommon.AtomicCounterErase(L2_2)
  AddTechniqueGlobal("CredentialAccess_SshBruteForceIncoming")
  return mp.INFECTED
end
return mp.CLEAN
