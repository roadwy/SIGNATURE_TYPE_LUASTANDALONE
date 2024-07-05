local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if L0_0 ~= nil and (string.find(L0_0, "*.doc", 1, true) or string.find(L0_0, "*.pdf", 1, true) or string.find(L0_0, "*.xls", 1, true) or string.find(L0_0, "password", 1, true) or string.find(L0_0, "id_dsa", 1, true) or string.find(L0_0, "id_rsa", 1, true) and (string.find(L0_0, "/home ", 1, true) or string.find(L0_0, "/home/ ", 1, true) or string.find(L0_0, "/root ", 1, true) or string.find(L0_0, "/root/ ", 1, true) or string.find(L0_0, " / ", 1, true))) then
  TrackPidAndTechniqueBM("BM", "T1083", "Discovery_FileAndDirectoryDiscovery")
  TrackPidAndTechniqueBM("BM", "T1005", "Collection_DatafromLocalSystem")
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
