local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in L2_2(L3_3) do
  if _FORV_6_.image_path ~= nil then
    if _FORV_6_.image_path:lower():find("setup", 1, true) then
      return mp.CLEAN
    end
    if _FORV_6_.image_path:lower():find("installer", 1, true) then
      return mp.CLEAN
    end
  end
end
return L2_2
