local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p1
else
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.add_related_file
L2_2 = L0_0
L1_1(L2_2)
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
elseif L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.ppid
L4_4 = L0_0
L3_3 = L0_0.match
L4_4 = L3_3(L4_4, "[^>](.-)([^\\/]-%.?([^%.\\/]*))$")
if L4_4 == nil then
  return mp.CLEAN
end
if isTainted(L0_0, "remote_file_created_taint") and checkFilePathInProcessCommandline(L2_2, L4_4, true) then
  reportRelatedBmHits()
  addRelatedProcess()
  TrackPidAndTechniqueBM("BM", "T1486", "Impact_GpgEncryption")
  return mp.INFECTED
end
if (string.sub(L0_0, 0, 5) == "/tmp/" or string.sub(L0_0, 0, 9) == "/var/tmp/" or string.sub(L0_0, 0, 9) == "/dev/shm/") and checkFilePathInProcessCommandline(L2_2, L4_4, true) then
  reportRelatedBmHits()
  addRelatedProcess()
  TrackPidAndTechniqueBM("BM", "T1486", "Impact_GpgEncryption")
  return mp.INFECTED
end
return mp.CLEAN
