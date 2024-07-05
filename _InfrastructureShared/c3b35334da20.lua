local L0_0
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L0_0 = L0_0()
for _FORV_4_, _FORV_5_ in ipairs(L0_0) do
  if _FORV_5_.image_path ~= nil then
    bm.add_related_file(_FORV_5_.image_path)
  end
end
return mp.INFECTED
