local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
L1_1 = string.lower(L1_1)
if string.find(L1_1, ":\\program files", 1, true) or string.find(L1_1, "\\windows defender advanced threat", 1, true) or string.find(L1_1, "\\microsoft intune management", 1, true) or string.find(L1_1, "\\iscvx\\", 1, true) or string.find(L1_1, "healthcheck", 1, true) or string.find(L1_1, "\\datacollection\\", 1, true) then
  return mp.CLEAN
end
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
bm.add_action("EmsScan", 5000)
return mp.INFECTED
