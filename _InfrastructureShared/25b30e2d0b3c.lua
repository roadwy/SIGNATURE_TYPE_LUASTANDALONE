local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1())
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for _FORV_6_, _FORV_7_ in L3_3(L4_4) do
  if _FORV_7_.image_path ~= nil and _FORV_7_.ppid ~= nil and mp.bitand(_FORV_7_.reason_ex, 1) == 1 and string.lower(_FORV_7_.image_path) ~= nil and L0_0 == string.lower(_FORV_7_.image_path) then
    bm.request_SMS(_FORV_7_.ppid, "M")
    return mp.INFECTED
  end
end
return L3_3
