local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = "\\powershell.exe"
L1_1 = string
L1_1 = L1_1.len
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = false
L3_3 = bm
L3_3 = L3_3.get_process_relationships
L4_4 = L3_3()
for _FORV_8_, _FORV_9_ in L5_5(L6_6) do
  if _FORV_9_.image_path ~= nil and mp.bitand(_FORV_9_.reason_ex, 1) == 1 and L1_1 < string.len(_FORV_9_.image_path) and string.sub(_FORV_9_.image_path, -L1_1) == L0_0 then
    L2_2 = true
    break
  end
end
if L2_2 == false then
  return L5_5
end
if L5_5 ~= nil then
  L6_6(L5_5, 3640120989)
end
return L6_6
