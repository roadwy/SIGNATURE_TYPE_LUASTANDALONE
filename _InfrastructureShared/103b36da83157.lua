local L0_0, L1_1, L2_2
L1_1 = string.match(this_sigattrlog[1].utf8p1, "\\\\(%l+)")
L0_0 = string.match(this_sigattrlog[1].utf8p2, "\\(%l+)%.exe")
if this_sigattrlog[2].matched then
  L2_2 = string.match(this_sigattrlog[2].utf8p1, "\\(%l+)%.exe")
end
if this_sigattrlog[3].matched then
  L2_2 = string.match(this_sigattrlog[3].utf8p1, "\\(%l+)%.exe")
end
if L1_1 == nil then
  return mp.CLEAN
end
if L1_1 == "" then
  return mp.CLEAN
end
if L1_1 == L0_0 and L1_1 == L2_2 then
  return mp.INFECTED
end
return mp.CLEAN
