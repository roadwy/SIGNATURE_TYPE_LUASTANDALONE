local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = mp
    L0_0 = L0_0.ContextualExpandEnvironmentVariables
    L0_0 = L0_0(this_sigattrlog[2].utf8p1)
    if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
      if mp.IsKnownFriendlyFile(L0_0, true, true) == true then
        return mp.CLEAN
      end
      if checkFileLastWriteTime(L0_0, 3600) == false then
        TrackPidAndTechniqueBM(this_sigattrlog[2].ppid, "T1071.003", "tactic=susptransportdll;filepath:" .. L0_0)
        bm.add_related_file(L0_0)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
