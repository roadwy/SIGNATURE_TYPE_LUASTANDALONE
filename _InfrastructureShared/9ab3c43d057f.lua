local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.GetExecutablesFromCommandLine
  L0_0 = L0_0(L1_1)
  for L4_4, L5_5 in L1_1(L2_2) do
    L5_5 = mp.ContextualExpandEnvironmentVariables(L5_5)
    if sysio.IsFileExists(L5_5) then
      bm.add_related_file(L5_5)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
