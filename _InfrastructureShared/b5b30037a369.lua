local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.wp2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.match
    L1_1 = L1_1(L0_0, "\\microsoft\\(%a+)\\(%a+)%.exe")
    if L1_1 and L1_1(L0_0, "\\microsoft\\(%a+)\\(%a+)%.exe") and string.sub(L1_1, 0, -2) == L1_1(L0_0, "\\microsoft\\(%a+)\\(%a+)%.exe") then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
