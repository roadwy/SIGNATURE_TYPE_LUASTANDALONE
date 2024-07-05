local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil and string.len(L0_0) > 4 and string.sub(L0_0, -4) == ".lnk" then
    TrackPidAndTechniqueBM("BM", "T1547.009", "persistence_source")
    TrackPidAndTechniqueBM("BM", "T1547.009", "ShortcutFileInStartup.D")
    TrackFileAndTechnique(L0_0, "T1547.009:persistence_target")
    TrackFileAndTechnique(L0_0, "T1547.009:ShortcutFileInStartup.D")
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
