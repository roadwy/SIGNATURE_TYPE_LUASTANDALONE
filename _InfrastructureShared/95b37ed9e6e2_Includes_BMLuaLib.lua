local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in L2_2(L3_3) do
  if mp.bitand(_FORV_6_.reason_ex, 1) == 1 and _FORV_6_.image_path and isTainted(_FORV_6_.image_path, "remote_file_created_taint") then
    addRelatedProcess()
    return mp.INFECTED
  end
end
return L2_2
