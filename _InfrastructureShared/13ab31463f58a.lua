local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = nil
    L1_1 = this_sigattrlog
    L1_1 = L1_1[5]
    L0_0 = L1_1.utf8p2
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L1_1 = L1_1.utf8p1
      if string.find(L0_0, L1_1, 1, true) then
        return mp.INFECTED
      end
    end
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p1
      if string.find(L0_0, L1_1, 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
