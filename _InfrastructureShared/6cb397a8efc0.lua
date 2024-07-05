local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L0_0 = L2_2.ppid
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = bm
  L2_2 = L2_2.get_process_relationships
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.ppid
  L3_3 = L2_2(L3_3)
  for _FORV_7_, _FORV_8_ in L4_4(L5_5) do
    L1_1 = _FORV_8_.ppid
    break
  end
  if L0_0 == L1_1 then
    return L4_4
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
