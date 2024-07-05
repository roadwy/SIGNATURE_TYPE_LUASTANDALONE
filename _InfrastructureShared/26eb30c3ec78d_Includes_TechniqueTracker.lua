local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[11]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[11]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[11]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[12]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[12]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[12]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2)
    L2_2 = L1_1.match
    L2_2 = L2_2(L1_1, "_exec:(.+)$")
    if L2_2 ~= nil and L0_0:find(L2_2, 1, true) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
