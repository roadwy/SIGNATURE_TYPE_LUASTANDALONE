local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0.command_line)
if string.find(L1_1, "srtasks.exe", 1, true) or string.find(L1_1, "executescheduledsppcreation", 1, true) then
  return mp.CLEAN
end
if IsTechniqueObservedGlobal("T1003") and IsTacticObservedGlobal("shadowcopy_create") then
  return mp.INFECTED
end
return mp.CLEAN
