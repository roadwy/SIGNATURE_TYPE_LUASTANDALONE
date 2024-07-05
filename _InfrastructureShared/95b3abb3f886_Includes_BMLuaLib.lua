local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
if L1_1 then
  L1_1 = {}
  L1_1[".one"] = true
  L1_1[".hta"] = true
  bm_AddRelatedFileFromCommandLine(L0_0.command_line, L1_1, nil, 6)
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
