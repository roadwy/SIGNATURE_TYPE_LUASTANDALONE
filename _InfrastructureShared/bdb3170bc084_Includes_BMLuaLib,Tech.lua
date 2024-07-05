local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = GetRealPidForScenario
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2)
L2_2 = L0_0.command_line
if L2_2 ~= nil and L2_2 ~= "" and (string.find(L2_2, "/Library/Application Support/JAMF/Jamf.app/", 1, true) or string.find(L2_2, "/usr/local/jamf/bin/jamf", 1, true) or string.find(L2_2, "GoogleUpdater --server", 1, true) or string.find(L2_2, "GoogleUpdater --install", 1, true) or string.find(L2_2, "/sbin/", 1, true) == 1) then
  return mp.CLEAN
end
AddResearchData(L1_1, true)
reportRelatedBmHits()
return mp.INFECTED
