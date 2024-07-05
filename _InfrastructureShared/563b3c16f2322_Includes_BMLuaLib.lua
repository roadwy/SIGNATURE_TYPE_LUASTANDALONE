local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.command_line
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L6_6 = false
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 == nil then
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = false
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 == nil then
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
end
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
    if sysio.IsFileExists(L7_7) then
      bm.add_related_file(L7_7)
    end
  end
end
L2_2 = add_parents
L2_2()
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
