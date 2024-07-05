local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = L0_0
L0_0 = L0_0.lower
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = IsExcludedByImagePath
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
  bm.add_related_file(_FORV_7_.image_path)
end
return L3_3
