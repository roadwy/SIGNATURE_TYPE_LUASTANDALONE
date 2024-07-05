local L0_0, L1_1, L2_2
if this_sigattrlog[2].matched then
  L1_1 = this_sigattrlog[2].wp1
elseif this_sigattrlog[3].matched then
  L1_1 = this_sigattrlog[3].wp1
elseif this_sigattrlog[4].matched then
  L1_1 = this_sigattrlog[4].wp1
elseif this_sigattrlog[5].matched then
  L2_2 = string.lower(this_sigattrlog[5].utf8p1)
end
if L1_1 ~= nil then
  L0_0 = string.lower(mp.utf16to8(L1_1))
  if string.find(L0_0, "\\ms%l+%.exe:%d+$") then
    return mp.INFECTED
  end
elseif L2_2 ~= nil and string.find(L2_2, "\\windows\\\\%d+$") then
  return mp.INFECTED
end
return mp.CLEAN
