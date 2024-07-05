local L0_0
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L0_0 = L0_0()
if not L0_0 then
  return mp.INFECTED
end
for _FORV_5_, _FORV_6_ in ipairs(L0_0) do
  if _FORV_6_.image_path then
    bm.add_related_file(_FORV_6_.image_path)
  end
end
return mp.INFECTED
