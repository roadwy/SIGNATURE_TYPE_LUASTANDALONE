local L0_0
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p1)
end
if L0_0 ~= nil and (string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\windows\\", 1, true)) then
  return mp.CLEAN
end
return mp.INFECTED
