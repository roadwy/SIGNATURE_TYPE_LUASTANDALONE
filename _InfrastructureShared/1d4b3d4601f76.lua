local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[10]
L0_0 = L0_0.ppid
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = ""
if this_sigattrlog[9].matched and this_sigattrlog[9].utf8p1 ~= nil then
  L0_0 = MpCommon.PathToWin32Path(string.lower(this_sigattrlog[9].utf8p1))
end
if mp.IsKnownFriendlyFile(L0_0, true, false) then
  return mp.CLEAN
end
if MpCommon.GetProcessElevationAndIntegrityLevel(this_sigattrlog[10].ppid).IntegrityLevel >= MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.INFECTED
end
return mp.CLEAN
