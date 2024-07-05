local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_process_relationships
  L1_1 = L0_0()
  for _FORV_5_, _FORV_6_ in L2_2(L3_3) do
    if _FORV_6_.image_path ~= nil and mp.bitand(_FORV_6_.reason_ex, 1) == 1 and (string.find(string.lower(_FORV_6_.image_path), "\\explorer.exe", 1, true) or string.find(string.lower(_FORV_6_.image_path), "\\svchost.exe", 1, true)) then
      return mp.CLEAN
    end
  end
  return L2_2
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
