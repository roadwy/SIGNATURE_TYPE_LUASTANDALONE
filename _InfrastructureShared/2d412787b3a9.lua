local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.p2
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[2].p1)
    if string.find(L1_1, L0_0, 10, true) then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
