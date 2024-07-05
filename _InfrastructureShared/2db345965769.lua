local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(this_sigattrlog[1].utf8p2)
if not string.find(L0_0, "/upload", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
