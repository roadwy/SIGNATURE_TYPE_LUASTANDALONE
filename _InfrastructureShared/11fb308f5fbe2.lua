local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 then
  L2_2 = L1_1.command_line
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L4_4)
    L2_2 = L3_3
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
end
L2_2, L3_3 = nil, nil
if L4_4 then
  if L4_4 ~= nil then
    L2_2 = L4_4.utf8p2
  end
end
if L4_4 then
  if L4_4 ~= nil then
    L3_3 = L4_4.utf8p1
  end
end
if L4_4 then
  if L4_4 ~= nil then
    L3_3 = L4_4.utf8p1
  end
end
if L2_2 ~= nil and L3_3 ~= nil then
  L2_2 = L4_4
  L7_7 = "\\([^\\]+)$"
  L8_8 = L5_5(L6_6, L7_7)
  L7_7 = L4_4
  if L5_5 then
    if L5_5 then
      L5_5(L6_6)
    end
  end
end
return L4_4
