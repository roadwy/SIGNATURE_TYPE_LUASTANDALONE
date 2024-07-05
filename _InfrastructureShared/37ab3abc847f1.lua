local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[14]
if L0_0 and L0_0.matched and MpCommon.GetProcessElevationAndIntegrityLevel(L0_0.ppid) and MpCommon.GetProcessElevationAndIntegrityLevel(L0_0.ppid).IntegrityLevel >= MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.INFECTED
end
return mp.CLEAN
