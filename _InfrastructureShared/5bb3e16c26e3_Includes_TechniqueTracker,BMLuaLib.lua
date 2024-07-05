local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p2
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.utf8p2
    if not string.match(L0_0, "^/var/www/") then
      return mp.CLEAN
    end
    bm.add_related_file(L0_0)
  end
end
L0_0 = addRelatedProcess
L0_0()
L0_0 = TrackPidAndTechniqueBM
L0_0("BM", "T1190", "InitialAccess_www")
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
