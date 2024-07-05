local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = this_sigattrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.p1
  L0_0 = L0_0(L1_1)
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[4].p2)
  if L0_0 and L1_1 and string.find(L0_0, "^%d%d%d+") and string.find(L1_1, "^(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)$") then
    return mp.INFECTED
  end
  return mp.CLEAN
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
