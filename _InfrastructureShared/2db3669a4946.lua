local L0_0, L1_1
L0_0 = string.lower(mp.utf16to8(this_sigattrlog[1].wp1))
L1_1 = string.lower(mp.utf16to8(this_sigattrlog[2].wp1))
if L0_0 ~= nil and L1_1 ~= nil and L0_0 == L1_1 then
  if string.find(L0_0, "c:\\windows\\system32\\", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
