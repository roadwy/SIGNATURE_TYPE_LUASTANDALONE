local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L0_0 = L2_2.utf8p1
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L1_1 = L2_2.ppid
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L0_0 = L2_2.utf8p1
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L1_1 = L2_2.ppid
  end
end
if L0_0 ~= nil and L1_1 ~= nil then
  L2_2 = isTainted
  L3_3 = L0_0
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 then
    L2_2 = bm
    L2_2 = L2_2.get_process_relationships
    L3_3 = L1_1
    L3_3 = L2_2(L3_3)
    for _FORV_7_, _FORV_8_ in L4_4(L5_5) do
      bm.add_related_process(_FORV_8_.ppid)
      TrackPidAndTechniqueBM(_FORV_8_.ppid, "T1547.006", "Persistence")
    end
    return L4_4
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
