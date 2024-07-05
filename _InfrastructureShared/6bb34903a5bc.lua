local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
L2_2 = "["
for _FORV_6_, _FORV_7_ in ipairs(L1_1) do
  if _FORV_7_ ~= nil and _FORV_7_.ppid ~= nil then
    L2_2 = L2_2 .. _FORV_7_.ppid .. ";" .. _FORV_7_.image_path .. "|"
  end
end
L2_2 = L2_2 .. "]"
if L2_2 ~= "[]" then
  bm.add_related_string("childlist", L2_2, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
