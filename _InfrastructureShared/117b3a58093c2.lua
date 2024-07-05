local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L3_3 = this_sigattrlog
L3_3 = L3_3[4]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[4]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[4]
    L3_3 = L3_3.utf8p2
    L4_4 = L3_3
    L3_3 = L3_3.match
    L3_3 = L3_3(L4_4, L5_5)
    L0_0 = L3_3
  end
end
L3_3 = this_sigattrlog
L3_3 = L3_3[5]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[5]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[5]
    L1_1 = L3_3.utf8p2
  end
end
L3_3 = this_sigattrlog
L3_3 = L3_3[6]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[6]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[6]
    L2_2 = L3_3.utf8p2
  end
end
L3_3 = bm
L3_3 = L3_3.get_process_relationships
L4_4 = L3_3()
for _FORV_8_, _FORV_9_ in L5_5(L6_6) do
  if _FORV_9_.image_path ~= nil and (string.find(_FORV_9_.image_path, "/installd", -9, true) or string.find(_FORV_9_.image_path, "/package_script_service", -23, true)) and string.find(L1_1, L0_0, 1, true) and string.find(L2_2, L0_0, 1, true) then
    return mp.INFECTED
  end
end
return L5_5
