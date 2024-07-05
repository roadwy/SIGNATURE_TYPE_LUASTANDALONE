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
if string.find(L1_1, "/bin/zip", -8, true) or string.find(L1_1, "/bin/tar", -8, true) or string.find(L1_1, "/bin/gzip", -9, true) or string.find(L1_1, "/7z", -3, true) or string.find(L1_1, "/usr/bin/file-roller", 1, true) == 1 or string.find(L1_1, "/7zz", -4, true) then
  addRelatedProcess()
  reportRelatedBmHits()
  TrackPidAndTechniqueBM("BM", "T1059", "SuspiciousCommandline")
  RemediateProcessTreeForLinux()
  return mp.INFECTED
end
return mp.CLEAN
