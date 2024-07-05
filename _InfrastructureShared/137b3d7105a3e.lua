local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 200000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = pcall
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L1_1(L2_2)
if L1_1 then
  L0_0 = L2_2.command_line
end
if L0_0 ~= nil then
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
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
