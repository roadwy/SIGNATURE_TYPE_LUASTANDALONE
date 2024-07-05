local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(this_sigattrlog[5].utf8p2)
if string.find(L0_0, "rundll32", 1, true) and string.find(L0_0, "onlogon", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
