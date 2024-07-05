local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L0_0.ppid
L2_2 = L1_1(L2_2)
for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
  bm.add_related_process(_FORV_7_.ppid)
  TrackPidAndTechniqueBM(_FORV_7_.ppid, "T1562.001", "DefenseEvasion")
end
return L3_3
