local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
L2_2 = nil
for _FORV_6_, _FORV_7_ in ipairs(L0_0) do
  L2_2 = _FORV_7_.image_path
  if L2_2 ~= nil then
    L2_2 = string.lower(L2_2)
    if L2_2:find("excel.exe") or L2_2:find("word.exe") then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
