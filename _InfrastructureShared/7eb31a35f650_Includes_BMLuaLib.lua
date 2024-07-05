local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = ":\\programdata\\"
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = L1_1.command_line
if L2_2 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  for L7_7, L8_8 in L4_4(L5_5) do
    L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
    if sysio.IsFileExists(L8_8) then
      bm.add_related_file(L8_8)
    end
  end
end
L3_3 = add_parents
L3_3()
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
