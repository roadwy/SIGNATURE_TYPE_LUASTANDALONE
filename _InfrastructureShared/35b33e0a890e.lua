local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if string.len(L1_1) < 1024 then
  return mp.CLEAN
end
return mp.INFECTED
