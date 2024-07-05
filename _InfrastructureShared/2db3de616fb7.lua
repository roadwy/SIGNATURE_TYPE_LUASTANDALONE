local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("WPADSuspCacheFile")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.utf8p1
L0_0 = mp.ContextualExpandEnvironmentVariables(L0_0)
if sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
  mp.ReportLowfi(L0_0, 1402450356)
end
return mp.INFECTED
