local L0_0, L1_1
if this_sigattrlog[1].matched then
  L0_0 = "genb_linux_ransom_meta"
elseif this_sigattrlog[2].matched then
  L0_0 = "gene_linux_ransom_meta"
elseif this_sigattrlog[3].matched then
  L0_0 = "genh_linux_ransom_meta"
elseif this_sigattrlog[4].matched then
  L0_0 = "genj_linux_ransom_meta"
end
if L0_0 == nil then
  return mp.CLEAN
end
if GetRollingQueueAsHashTable(L0_0) == nil then
  return mp.CLEAN
end
L1_1 = GetRollingQueueAsHashTable(L0_0).appended_ext
if L1_1 == nil then
  return mp.CLEAN
end
if isKnownRansomExtension(L1_1, true) then
  addRelatedProcess()
  TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
  TerminateParentProcessForLinux()
  return mp.INFECTED
end
return mp.CLEAN
