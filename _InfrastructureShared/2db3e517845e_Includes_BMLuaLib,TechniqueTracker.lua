local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.ppid
end
if L0_0 ~= nil then
  L1_1 = TrackPidAndTechniqueBM
  L2_2 = L0_0
  L1_1(L2_2, L3_3, L4_4)
  L1_1 = bm
  L1_1 = L1_1.get_process_relationships
  L2_2 = L0_0
  L2_2 = L1_1(L2_2)
  for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
    bm.add_related_process(_FORV_7_.ppid)
    TrackPidAndTechniqueBM(_FORV_7_.ppid, "T1562.001", "DefenseEvasion_AslrToggle")
  end
  L3_3()
  L3_3()
  return L3_3
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
