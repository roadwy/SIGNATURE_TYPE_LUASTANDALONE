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
if string.find(L2_2, "\\appdata\\roaming\\", 1, true) or string.find(L2_2, "\\public\\", 1, true) or string.find(L2_2, "\\programdata\\", 1, true) or string.find(L1_1, "[\\start menu\\programs\\startup\\] ", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
