local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(this_sigattrlog[1].p1)
  if string.find(L0_0, "^%d%d%d%d+$") then
    return mp.INFECTED
  end
  return mp.CLEAN
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
