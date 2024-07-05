local L0_0
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L0_0 = L0_0()
for _FORV_6_, _FORV_7_ in ipairs(L0_0) do
  if _FORV_7_.image_path ~= nil then
    if string.find(_FORV_7_.image_path, "\\MSBuild%.exe$") ~= nil or string.find(_FORV_7_.image_path, "\\devenv%.exe$") ~= nil or string.find(_FORV_7_.image_path, "\\K2Studio%.exe$") ~= nil then
      return mp.CLEAN
    end
    bm.add_related_file(_FORV_7_.image_path)
  end
end
if true then
  return mp.INFECTED
end
return mp.CLEAN
