local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[2]
      L0_0 = L0_0.utf8p1
      if L0_0 ~= nil then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = this_sigattrlog
        L1_1 = L1_1[1]
        L1_1 = L1_1.utf8p2
        L0_0 = L0_0(L1_1)
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[2]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L2_2 = L1_1.match
        L2_2 = L2_2(L1_1, "([^\\]+)$")
        if L2_2 and string.find(L0_0, L2_2, 1, true) then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
