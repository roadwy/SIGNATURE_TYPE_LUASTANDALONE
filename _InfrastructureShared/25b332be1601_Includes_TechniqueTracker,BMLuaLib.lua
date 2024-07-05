local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.IsHipsRuleEnabled
L2_2 = "c1db55ab-c21a-4637-bb3f-a12568109d35"
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = GetDetectionThresholdMetReason
  L2_2 = L0_0.ppid
  L2_2 = L1_1(L2_2)
  if L1_1 and L2_2 ~= 2 then
    L3_3 = bm_AddRelatedFileFromCommandLine
    L4_4 = L0_0.command_line
    L3_3(L4_4, nil, nil, 1)
    L3_3 = bm
    L3_3 = L3_3.get_process_relationships
    L4_4 = L3_3()
    for _FORV_8_, _FORV_9_ in ipairs(L4_4) do
      if mp.bitand(_FORV_9_.reason_ex, bm.RELATIONSHIP_INJECTION) == bm.RELATIONSHIP_INJECTION then
        bm.add_threat_process(_FORV_9_.ppid)
      end
    end
    AddResearchData(L0_0.ppid, true)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
