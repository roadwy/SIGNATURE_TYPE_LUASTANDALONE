local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 == nil or L1_1 == "" or L0_0 == nil or L0_0.command_line == nil then
  return mp.CLEAN
end
if string.find(L1_1, "/bin/tar", -8, true) then
  for _FORV_6_ in string.gmatch(L0_0.command_line, "/var/log/recap") do
  end
  if 0 + 1 > 15 then
    return mp.CLEAN
  end
end
function CheckCriticalFilesArchived(A0_2)
  local L1_3, L2_4, L3_5, L4_6, L5_7, L6_8
  L1_3 = {
    L2_4,
    L3_5,
    L4_6,
    L5_7,
    L6_8,
    ".pdf[^/%w]",
    ".xls?[^/%w]",
    ".ppt?[^/%w]",
    ".sh[^/%w]",
    ".c[^/%w]",
    ".cpp[^/%w]"
  }
  L5_7 = ".conf[^/%w]"
  L6_8 = ".doc?[^/%w]"
  for L5_7, L6_8 in L2_4(L3_5) do
    for _FORV_11_ in string.gmatch(A0_2, L6_8) do
    end
    if 0 + 1 > 15 then
      return true
    end
  end
  return L2_4
end
if (string.find(L1_1, "/bin/zip", -8, true) or string.find(L1_1, "/bin/tar", -8, true) or string.find(L1_1, "/bin/gzip", -9, true) or string.find(L1_1, "/7z", -3, true) or string.find(L1_1, "/usr/bin/file-roller", 1, true) == 1 or string.find(L1_1, "/7zz", -4, true)) and CheckCriticalFilesArchived(L0_0.command_line) then
  addRelatedProcess()
  reportRelatedBmHits()
  TrackPidAndTechniqueBM("BM", "T1560", "Collection_ArchiveData")
  RemediateProcessTreeForLinux()
  return mp.INFECTED
end
return mp.CLEAN
