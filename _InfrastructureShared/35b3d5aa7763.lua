local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for _FORV_5_, _FORV_6_ in L2_2(L3_3) do
  if string.lower(string.match(_FORV_6_.image_path, "\\([^\\]+)$")) == "java.exe" or string.lower(string.match(_FORV_6_.image_path, "\\([^\\]+)$")) == "javaw.exe" then
    return mp.INFECTED
  end
  return mp.CLEAN
end
return L2_2
