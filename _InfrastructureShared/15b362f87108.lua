local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0.command_line)
if string.find(L1_1, "\\program files", 1, true) or string.find(L1_1, "/azure/", 1, true) or string.find(L1_1, "assist.itnow.net", 1, true) or string.find(L1_1, "/dkbrookie", 1, true) or string.find(L1_1, "/sysmon", 1, true) or string.find(L1_1, "/completeitltd", 1, true) or string.find(L1_1, "/compassmsp", 1, true) or string.find(L1_1, "/braingears/", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
