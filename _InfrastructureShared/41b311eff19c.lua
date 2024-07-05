local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("WPADProcess")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L0_0("WPADExploitAttempt.seen")
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L0_0("WPADSuspCacheFile")
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = MpCommon
  L0_0 = L0_0.PathToWin32Path
  L0_0 = L0_0(this_sigattrlog[3].utf8p1)
  if sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
