local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0)
    if string.find(L1_1, "\\windows\\sys", 1, true) == nil then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
