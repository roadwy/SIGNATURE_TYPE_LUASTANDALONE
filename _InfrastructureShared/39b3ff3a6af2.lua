local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if string.find(L1_1, " -l ", 1, true) and string.find(L1_1, " -p ", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
