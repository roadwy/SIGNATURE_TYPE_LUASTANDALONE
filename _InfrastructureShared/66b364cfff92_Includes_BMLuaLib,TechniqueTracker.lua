local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = isnull
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p1
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = isnull
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  L0_0 = L0_0(L1_1)
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.utf8p1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p2
L2_2 = "^\"C:\\-[wW][iI][nN][dD][oO][wW][sS]\\-system32\\-mavinject.exe\" %d+ /INJECTRUNNING \"?C:\\-Windows\\-System32\\-Subsystems\\-AppVEntSubsystems[36][24].dll\"? 1$"
L3_3 = isnull
L4_4 = string
L4_4 = L4_4.find
L5_5 = L1_1
L6_6 = L2_2
L7_7 = L4_4(L5_5, L6_6)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5, L6_6))
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = L0_0
L5_5 = "imagename:.+;targetprocessppid:(%d+):(%d+)$"
L4_4 = L3_3(L4_4, L5_5)
L5_5 = string
L5_5 = L5_5.match
L6_6 = L1_1
L7_7 = "(%d+) .-[iI][nN][jJ][eE][cC][tT][rR][uU][nN][nN][iI][nN][gG] (.+)$"
L6_6 = L5_5(L6_6, L7_7)
L7_7 = isnull
L7_7 = L7_7(L6_6)
if not L7_7 then
  L7_7 = isnull
  L7_7 = L7_7(L3_3)
  if not L7_7 then
    L7_7 = isnull
    L7_7 = L7_7(L5_5)
  end
elseif L7_7 or L3_3 ~= L5_5 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = isnull
L7_7 = L7_7(bm.get_current_process_startup_info().ppid)
if not L7_7 then
  L7_7 = TrackPidAndTechniqueBM
  L7_7(bm.get_current_process_startup_info().ppid, "T1055.001", "processinjection")
end
L7_7 = string
L7_7 = L7_7.format
L7_7 = L7_7("pid:%d,ProcessStart:%d", L3_3, L4_4)
TrackPidAndTechniqueBM(L7_7, "T1055.001", "processinjection_target")
bm.add_threat_process(L7_7)
if pcall(mp.GetExecutablesFromCommandLine, L6_6) and not isnull(pcall(mp.GetExecutablesFromCommandLine, L6_6)[1]) then
  bm.add_threat_file(pcall(mp.GetExecutablesFromCommandLine, L6_6)[1])
else
  bm.add_related_string("T1055.001_InjectedDLL_ErrorScanning", L6_6, bm.RelatedStringBMReport)
end
return mp.INFECTED
