local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
for L4_4 = 1, L2_2.SIGATTR_LOG_SZ do
  L5_5 = sigattr_tail
  L5_5 = L5_5[L4_4]
  L5_5 = L5_5.matched
  if L5_5 then
    L5_5 = sigattr_tail
    L5_5 = L5_5[L4_4]
    L5_5 = L5_5.attribute
    if L5_5 == 16401 then
      L5_5 = sigattr_tail
      L5_5 = L5_5[L4_4]
      L0_0 = L5_5.utf8p2
      if L0_0 ~= nil then
        L5_5 = mp
        L5_5 = L5_5.GetExecutablesFromCommandLine
        L5_5 = L5_5(L6_6)
        for L9_9, L10_10 in L6_6(L7_7) do
          L10_10 = mp.ContextualExpandEnvironmentVariables(L10_10)
          if sysio.IsFileExists(L10_10) then
            bm.add_related_file(L10_10)
          end
        end
      end
    end
  end
end
L1_1()
L4_4 = "impair_recovery"
L1_1(L2_2, L3_3, L4_4)
return L1_1
