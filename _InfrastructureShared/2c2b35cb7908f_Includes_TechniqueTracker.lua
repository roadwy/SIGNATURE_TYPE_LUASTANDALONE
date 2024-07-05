local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.command_line
  L3_3 = L1_1.ppid
  if L3_3 ~= nil then
    L4_4 = IsDetectionThresholdMet
    L4_4 = L4_4(L5_5)
    if L4_4 then
      if L2_2 ~= nil then
        L4_4 = string
        L4_4 = L4_4.lower
        L4_4 = L4_4(L5_5)
        L2_2 = L4_4
        L4_4 = mp
        L4_4 = L4_4.GetExecutablesFromCommandLine
        L4_4 = L4_4(L5_5)
        for L8_8, L9_9 in L5_5(L6_6) do
          L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
          if sysio.IsFileExists(L9_9) then
            AddResearchData(L3_3, true)
            bm.add_related_file(L9_9)
          end
        end
      end
      L4_4 = mp
      L4_4 = L4_4.INFECTED
      return L4_4
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
