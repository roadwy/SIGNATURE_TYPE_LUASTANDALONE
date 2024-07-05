local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(this_sigattrlog[1].utf8p2)
if string.find(L0_0, "\\spyhunter\\", 1, true) then
  return mp.CLEAN
elseif string.find(L0_0, "\\yandex\\", 1, true) then
  return mp.CLEAN
elseif string.find(L0_0, "\\utiltool\\", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
