local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if string.find(L1_1, "\\\\.*%.bat", 1, false) then
  return mp.CLEAN
end
return mp.INFECTED
