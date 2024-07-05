if not this_sigattrlog[1].ppid then
  return mp.CLEAN
end
if MpCommon.GetProcessElevationAndIntegrityLevel(this_sigattrlog[1].ppid).IntegrityLevel >= MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  bm.trigger_sig("EOP", "SYSTEM")
end
return mp.CLEAN
