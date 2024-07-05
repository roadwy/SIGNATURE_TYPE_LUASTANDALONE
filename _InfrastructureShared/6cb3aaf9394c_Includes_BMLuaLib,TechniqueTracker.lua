local L0_0, L1_1, L2_2, L3_3
L0_0 = ""
L1_1 = ""
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L0_0 = L2_2.utf8p1
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L1_1 = L2_2.utf8p1
end
if not L0_0 or not L1_1 or L0_0 ~= L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
L3_3 = {
  {
    "/usr/sbin/httpd",
    ""
  },
  {
    "/usr/sbin/apache",
    ""
  },
  {
    "/usr/sbin/nginx",
    ""
  },
  {
    "/usr/sbin/lighttpd",
    ""
  }
}
if not L2_2.ppid or not checkParentCmdline(L2_2.ppid, L3_3, 5) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1190", "InitialAccess_FileDrop")
return mp.INFECTED
