local L0_0
if this_sigattrlog[7].matched and this_sigattrlog[7].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[7].utf8p1
end
if L0_0 then
  bm.add_related_file(L0_0)
end
TrackPidAndTechniqueBM("BM", "T1040", "Discovery_NetworkCapture_Sniffing")
reportRelatedBmHits()
return mp.INFECTED
