local L0_0
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
end
if isTainted(L0_0, "remote_file_created_taint") then
  TrackPidAndTechniqueBM("BM", "T1083", "Discovery_FileAndDirectoryDiscovery")
  TrackPidAndTechniqueBM("BM", "T1005", "Collection_DatafromLocalSystem")
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
if string.sub(L0_0, 0, 5) == "/tmp/" or string.sub(L0_0, 0, 9) == "/var/tmp/" or string.sub(L0_0, 0, 9) == "/dev/shm/" then
  TrackPidAndTechniqueBM("BM", "T1083", "Discovery_FileAndDirectoryDiscovery")
  TrackPidAndTechniqueBM("BM", "T1005", "Collection_DatafromLocalSystem")
  addRelatedProcess()
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
