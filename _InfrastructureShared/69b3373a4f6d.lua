local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if string.find(L1_1, " %d%d%d?%d?%d? ", 1, false) and string.find(L1_1, " %d%d?%d?%.%d%d?%d?%.%d%d?%d?%.%d%d?%d?% ", 1, false) then
  return mp.INFECTED
end
return mp.CLEAN
