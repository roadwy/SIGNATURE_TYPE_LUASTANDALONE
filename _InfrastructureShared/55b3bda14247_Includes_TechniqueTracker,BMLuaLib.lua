local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.len
    L1_1 = L1_1(L0_0)
    if L1_1 > 4 then
      L1_1 = string
      L1_1 = L1_1.sub
      L1_1 = L1_1(L0_0, -4)
      if L1_1 == ".lnk" then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[1]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[1]
          L1_1 = L1_1.utf8p2
          bm_AddRelatedFileFromCommandLine(L1_1)
        end
        L1_1 = TrackPidAndTechniqueBM
        L1_1("BM", "T1547.009", "persistence_source")
        L1_1 = TrackPidAndTechniqueBM
        L1_1("BM", "T1547.009", "ShortcutFileInStartup.I")
        L1_1 = TrackFileAndTechnique
        L1_1(L0_0, "T1547.009:persistence_target")
        L1_1 = TrackFileAndTechnique
        L1_1(L0_0, "T1547.009:ShortcutFileInStartup.I")
        L1_1 = mp
        L1_1 = L1_1.INFECTED
        return L1_1
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
