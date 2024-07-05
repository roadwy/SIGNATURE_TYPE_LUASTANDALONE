local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L2_2 = L0_0
L1_1 = L0_0.match
L2_2 = L1_1(L2_2, "(.+\\)([^\\]+)$")
if string.sub(L2_2, 1, 9) == "dpservice" then
  return mp.INFECTED
end
return mp.CLEAN
