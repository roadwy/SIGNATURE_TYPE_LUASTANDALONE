local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1())
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == "\\inetsrv\\w3wp.exe" then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
  if _FORV_7_.image_path ~= nil and mp.bitand(_FORV_7_.reason_ex, 1) == 1 and string.lower(string.sub(_FORV_7_.image_path, -17)) == "\\inetsrv\\w3wp.exe" then
    return mp.INFECTED
  end
end
return L3_3
