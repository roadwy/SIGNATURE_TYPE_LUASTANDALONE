local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = {}
    L1_1[".dat"] = true
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L0_0.command_line)
    bm_AddRelatedFileFromCommandLine(L2_2, L1_1, nil, 1)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
