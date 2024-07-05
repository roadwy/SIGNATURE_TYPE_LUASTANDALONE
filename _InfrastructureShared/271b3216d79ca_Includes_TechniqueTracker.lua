local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[18]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[18]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[18]
    L0_0 = L0_0.utf8p1
    if L0_0 ~= "" then
      L0_0 = string
      L0_0 = L0_0.lower
      L0_0 = L0_0(this_sigattrlog[18].utf8p1)
      if string.find(L0_0, "/tmp/", 1, true) or string.find(L0_0, "/var/", 1, true) or string.find(L0_0, "/etc/", 1, true) or string.find(L0_0, "/library/caches/", 1, true) or string.find(L0_0, "/users/shared/", 1, true) then
        TrackPidAndTechniqueBM("BM", "T1560.001", "Collection_ArchiveCollectedData_mt2024")
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
