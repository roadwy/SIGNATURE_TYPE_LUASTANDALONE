local L0_0
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
for _FORV_5_, _FORV_6_ in ipairs(L0_0) do
  if _FORV_6_.image_path ~= nil then
    if ({
      ["svchost.exe"] = true,
      ["taskhostw.exe"] = true,
      ["taskeng.exe"] = true
    })[string.lower(string.sub(_FORV_6_.image_path, -15)):match("\\([^\\]+)$")] then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
