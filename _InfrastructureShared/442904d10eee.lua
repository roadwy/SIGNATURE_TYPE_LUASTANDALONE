local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("MpIsPowerShellAMSIScan")
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L0_0 = L0_0(mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
  if L0_0 and MpCommon.GetProcessElevationAndIntegrityLevel(L0_0) and MpCommon.GetProcessElevationAndIntegrityLevel(L0_0).IntegrityLevel < MpCommon.SECURITY_MANDATORY_HIGH_RID then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
