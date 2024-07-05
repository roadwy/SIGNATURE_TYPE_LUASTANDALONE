local L0_0, L1_1, L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L0_0 = L2_2.utf8p1
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(string.sub(L0_0, -4))
  L1_1 = L2_2
  if L1_1 == ".cmd" then
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
