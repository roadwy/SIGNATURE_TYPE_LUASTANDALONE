local L0_0, L1_1, L2_2
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L1_1 = L0_0
L0_0 = L0_0.lower
L0_0 = L0_0(L1_1)
L1_1 = {
  L2_2,
  "megasync.exe",
  "freefilesync.exe",
  "realtimesync.exe",
  "FreeFileSync_Win32.exe",
  "FreeFileSync_x64.exe",
  "RealTimeSync_Win32.exe",
  "RealTimeSync_x64.exe",
  "gclone.exe",
  "lclone.exe",
  "fclone.exe",
  "cmmagent",
  "pcloud.exe",
  "FreeFileSyncPortable.exe",
  "upclone",
  "\\rclone\\",
  "rbclone.exe"
}
L2_2 = "rclone.exe"
L2_2 = contains
L2_2 = L2_2(L0_0, L1_1)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = contains
L2_2 = L2_2(L0_0, MpCommon.ExpandEnvironmentVariables("%systemdrive%"))
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {
  "program files"
}
if not contains(L0_0, L2_2) then
  TrackPidAndTechniqueBM("BM", "T1567", "ToolExfilOverWeb")
  reportRelatedBmHits()
  add_parents()
  return mp.INFECTED
end
return mp.CLEAN
