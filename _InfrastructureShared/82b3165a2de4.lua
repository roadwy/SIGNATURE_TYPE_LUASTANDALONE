local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in L2_2(L3_3) do
  if _FORV_6_.image_path ~= nil and mp.bitand(_FORV_6_.reason_ex, 1) == 1 and (string.lower(string.sub(_FORV_6_.image_path, 13)) == "\\wmiprvse.exe" or string.lower(string.sub(_FORV_6_.image_path, 12)) == "\\scrcons.exe") then
    return mp.INFECTED
  end
end
return L2_2