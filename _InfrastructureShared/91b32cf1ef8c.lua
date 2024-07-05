local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = mp
    L8_8 = L8_8.ContextualExpandEnvironmentVariables
    L8_8 = L8_8(L7_7)
    L7_7 = L8_8
    L8_8 = sysio
    L8_8 = L8_8.IsFileExists
    L8_8 = L8_8(L7_7)
    if L8_8 then
      L8_8 = bm
      L8_8 = L8_8.add_related_file
      L8_8(L7_7)
    end
  end
end
L2_2 = nil
if L3_3 then
  if L3_3 ~= nil then
    L2_2 = L3_3.utf8p2
  end
end
if L2_2 ~= nil then
  for L7_7, L8_8 in L4_4(L5_5) do
    L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
    if sysio.IsFileExists(L8_8) then
      bm.add_related_file(L8_8)
    end
  end
end
return L3_3
