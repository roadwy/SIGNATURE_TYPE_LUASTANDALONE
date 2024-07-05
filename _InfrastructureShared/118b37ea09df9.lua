local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.wp2
  if L0_0 ~= nil then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in L2_2(L3_3) do
  if _FORV_6_.image_path ~= nil and (string.find(_FORV_6_.image_path, "python", 1, true) or string.find(_FORV_6_.image_path, "perl", 1, true) or string.find(_FORV_6_.image_path, "osascript", 1, true)) then
    return mp.INFECTED
  end
end
return L2_2
