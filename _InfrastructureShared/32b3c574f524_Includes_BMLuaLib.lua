local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.command_line
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
if analyzeEsxcliProcessPattern(L1_1) == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
