local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = bm
    L0_0 = L0_0.get_process_relationships
    L0_0 = L0_0()
    if L0_0 == nil then
      return mp.CLEAN
    end
    for _FORV_5_, _FORV_6_ in ipairs(L0_0) do
      if _FORV_6_.image_path ~= nil and mp.bitand(_FORV_6_.reason_ex, 1) == 1 and string.find(string.lower(_FORV_6_.image_path), "\\msiexec.exe", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
