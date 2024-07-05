local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
L2_2 = nil
for _FORV_6_, _FORV_7_ in ipairs(L1_1) do
  if _FORV_7_.image_path ~= nil and mp.bitand(_FORV_7_.reason_ex, 1) == 1 then
    L2_2 = string.lower(_FORV_7_.image_path)
    if string.find(L2_2, "\\powershell.exe", 1, true) then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
