local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L1_1, "(%a:\\[^\"]-%.ps1)")
L1_1 = string.lower(L1_1)
if string.find(L1_1, ":\\program files", 1, true) or string.find(L1_1, "\\windows defender advanced threat protection\\", 1, true) or string.find(L1_1, "sentinel", 1, true) or string.find(L1_1, "format-list", 1, true) or string.find(L1_1, "-outputformat", 1, true) or string.find(L1_1, "get-vm", 1, true) then
  return mp.CLEAN
end
if L2_2 and sysio.IsFileExists(L2_2) then
  mp.ReportLowfi(L2_2, 1120308759)
  bm.add_related_file(L2_2)
end
return mp.INFECTED
