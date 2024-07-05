local L0_0, L1_1, L2_2
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
L1_1 = bm_AddRelatedFileFromCommandLine
L2_2 = L0_0.command_line
L1_1(L2_2, nil, nil, 1)
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
  if mp.bitand(_FORV_7_.reason_ex, bm.RELATIONSHIP_INJECTION) == bm.RELATIONSHIP_INJECTION then
    TrackPidAndTechniqueBM(_FORV_7_.ppid, "T1055.002", "processinjection_target_remoteinitiated_b")
    bm.add_threat_process(_FORV_7_.ppid)
  end
end
TrackPidAndTechniqueBM("BM", "T1055.002", "processinjection_source_remoteinitiated_b")
return mp.INFECTED
