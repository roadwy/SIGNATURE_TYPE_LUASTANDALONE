local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0.command_line)
if string.find(L1_1, "\\program files", 1, true) or string.find(L1_1, "gizmoinvoker", 1, true) or string.find(L1_1, "monitorworkeragent", 1, true) or string.find(L1_1, "\\programdata\\microsoft\\windows defender advanced threat protection", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
