local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L0_0 = L1_1.ppid
    L1_1 = IsTacticObservedForPid
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 then
      L1_1 = bm
      L1_1 = L1_1.get_process_relationships
      L2_2 = L1_1()
      for L6_6, L7_7 in L3_3(L4_4) do
        L8_8 = TrackPidAndTechniqueBM
        L9_9 = L7_7.ppid
        L8_8(L9_9, "T1505.003", "webshell_childproc", 28800)
      end
      if L4_4 then
        if L4_4 ~= nil then
          if L3_3 ~= nil then
            for L8_8, L9_9 in L5_5(L6_6) do
              L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
              if sysio.IsFileExists(L9_9) then
                bm.add_related_file(L9_9)
              end
            end
          end
        end
      end
      return L4_4
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
