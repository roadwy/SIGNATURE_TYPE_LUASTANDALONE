local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "c1db55ab-c21a-4637-bb3f-a12568109d35"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_current_process_startup_info
  L0_0 = L0_0()
  if L0_0 ~= nil then
    L1_1 = L0_0.command_line
  elseif L1_1 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = bm_AddRelatedFileFromCommandLine
  L2_2 = L0_0.command_line
  L1_1(L2_2, nil, nil, 1)
  L1_1 = bm
  L1_1 = L1_1.get_process_relationships
  L2_2 = L1_1()
  for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
    bm.add_threat_process(_FORV_7_.ppid)
  end
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
