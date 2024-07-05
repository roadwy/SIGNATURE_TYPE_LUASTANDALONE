local L0_0
if this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p1
end
if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
  bm.add_related_file(L0_0)
end
TrackPidAndTechniqueBM("BM", "T1505.002", "TransportAgent")
return mp.INFECTED
