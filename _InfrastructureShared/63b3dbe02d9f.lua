local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "([^\\]-[^\\%.]+)$")
  L0_0 = L1_1
end
if L0_0 == nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if L1_1 < 3 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L1_1 = L2_2.utf8p2
end
if L1_1 == nil then
  L2_2 = string
  L2_2 = L2_2.len
  L2_2 = L2_2(L1_1)
  if L2_2 < 3 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = nil
if this_sigattrlog[3].matched then
  L2_2 = this_sigattrlog[3].utf8p1
  L2_2 = string.match(L2_2, "([^\\]-[^\\%.]+)$")
end
if L2_2 == nil and string.len(L2_2) < 3 then
  return mp.CLEAN
end
if L0_0 == L2_2 then
  return mp.CLEAN
end
if string.find(L1_1, L0_0, 1, true) and string.find(L1_1, L2_2, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
