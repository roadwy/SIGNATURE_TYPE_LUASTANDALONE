local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.integrity_level
elseif L1_1 == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[4].utf8p1))
if L1_1 then
  if string.find(L1_1, "windows\\assembly\\nativeimages_v4", 1, true) then
    return mp.CLEAN
  end
  if string.find(L1_1, "packagemanagement\\providerassemblies\\nuget", 1, true) then
    return mp.CLEAN
  end
  if not mp.IsKnownFriendlyFile(L1_1, false, false) then
    mp.ReportLowfi(L1_1, 2040612934)
  end
end
return mp.INFECTED
