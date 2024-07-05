local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
  L0_0 = _FORV_7_.ppid
  if L0_0 and IsDetectionThresholdMet(L0_0) and (IsTacticObservedForPid(L0_0, "credentialdumping") or IsTacticObservedForPid(L0_0, "impair_recovery")) then
    return mp.INFECTED
  end
end
return L3_3
