local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in L2_2(L3_3) do
  bm.add_related_process(_FORV_6_.ppid)
  TrackPidAndTechniqueBM(_FORV_6_.ppid, "T1548.003", "PrivilegeEscalation")
end
return L2_2
