local L0_0, L1_1
if this_sigattrlog[2].matched and this_sigattrlog[2].wp1 ~= nil then
  L0_0 = mp.utf16to8(this_sigattrlog[2].wp1)
end
if this_sigattrlog[1].matched and this_sigattrlog[1].wp1 ~= nil then
  L1_1 = mp.utf16to8(this_sigattrlog[1].wp1)
end
if L0_0 ~= nil and L1_1 ~= nil and string.find(L1_1, L0_0, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
