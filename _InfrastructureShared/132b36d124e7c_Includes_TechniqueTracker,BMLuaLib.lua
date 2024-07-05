local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = {
  L2_2,
  {
    "/bin/run-parts",
    ""
  }
}
L2_2 = {
  "/usr/bin/run-parts",
  ""
}
L2_2 = L0_0.ppid
if L2_2 then
  L2_2 = isParentPackageManager
  L2_2 = L2_2(L0_0.ppid, true)
  if not L2_2 then
    L2_2 = checkParentCmdline
    L2_2 = L2_2(L0_0.ppid, L1_1, 3)
  end
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
table.insert(L2_2, "GrubTampering.A")
MpCommon.SetPersistContextNoPath("isRebootDangerous", L2_2, 3600)
TrackPidAndTechniqueBM("BM", "T1561.002", "Impact")
return mp.INFECTED
