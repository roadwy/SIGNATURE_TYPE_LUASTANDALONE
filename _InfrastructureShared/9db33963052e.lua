local L0_0
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2]
end
if L0_0 and MpCommon.GetProcessElevationAndIntegrityLevel(L0_0.ppid) and MpCommon.GetProcessElevationAndIntegrityLevel(L0_0.ppid).IntegrityLevel >= MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.INFECTED
end
return mp.CLEAN
