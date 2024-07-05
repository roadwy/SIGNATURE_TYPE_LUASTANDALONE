local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L1_1, "(%a:\\[^\"]-%.ps1)")
if L2_2 and sysio.IsFileExists(L2_2) then
  mp.ReportLowfi(L2_2, 1120308759)
  bm.add_related_file(L2_2)
end
TrackCustomPersistContextNameByPPID("set", "bm", "MimikatzTrigger")
bm.add_action("EmsScan", 3000)
return mp.INFECTED
