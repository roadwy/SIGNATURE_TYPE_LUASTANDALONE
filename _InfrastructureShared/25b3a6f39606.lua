local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(string.gsub(L1_1, "`", ""))
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.gsub
L2_2 = L2_2(L1_1, " ", "")
if string.find(L2_2, ").downloadstring(", 1, true) or string.find(L2_2, ")).readtoend()", 1, true) or string.find(L1_1, "[wmiclass] ", 1, true) then
  return mp.INFECTED
end
if string.len(L1_1) > 2048 and (string.find(L1_1, " -e ", 1, true) or string.find(L1_1, " -ec ", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
