local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = nil
L3_3 = {
  {
    "/usr/bin/make",
    ""
  },
  {
    "/usr/bin/ninja",
    ""
  }
}
if L1_1.ppid == nil or L0_0 == nil or isParentPackageManager(L1_1.ppid, true) or checkParentCmdline(L1_1.ppid, L3_3, 3) then
  return mp.CLEAN
end
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[1].utf8p1
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[2].utf8p1
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[3].utf8p1
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched and this_sigattrlog[6].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[6].utf8p1
elseif this_sigattrlog[7].matched and this_sigattrlog[7].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched and this_sigattrlog[8].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[8].utf8p1
elseif this_sigattrlog[9].matched and this_sigattrlog[9].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[9].utf8p1
elseif this_sigattrlog[10].matched and this_sigattrlog[10].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[10].utf8p1
elseif this_sigattrlog[11].matched and this_sigattrlog[11].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[11].utf8p1
elseif this_sigattrlog[12].matched and this_sigattrlog[12].utf8p1 ~= nil then
  L2_2 = this_sigattrlog[12].utf8p1
end
if L2_2 == nil then
  return mp.CLEAN
end
if isTainted(L0_0, "remote_file_created_taint") then
  addRelatedProcess()
  reportRelatedBmHits()
  bm.add_related_file(L2_2)
  TrackPidAndTechniqueBM("BM", "T1036", "DefenseEvasion_Masquerading_FileDropinBinByRemoteFile")
  return mp.INFECTED
end
return mp.CLEAN
