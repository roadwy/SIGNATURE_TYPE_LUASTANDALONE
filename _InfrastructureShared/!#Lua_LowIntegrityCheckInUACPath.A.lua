if mp.GetUACMetadata() ~= nil and MpCommon.GetProcessElevationAndIntegrityLevel(string.format("pid:%u", mp.GetUACMetadata().RequestorPid)).IntegrityLevel == MpCommon.SECURITY_MANDATORY_LOW_RID then
  return mp.SYNCLOWFI
end
return mp.CLEAN
