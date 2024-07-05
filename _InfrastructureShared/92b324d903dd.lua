local L0_0, L1_1, L2_2, L3_3
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L1_1 = L2_2.utf8p1
  end
end
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L0_0)
L2_2 = L2_2(L3_3, "([^\\]+)$")
L3_3 = string
L3_3 = L3_3.match
L3_3 = L3_3(string.lower(L1_1), "([^\\]+)$")
if L2_2 == nil or L3_3 == nil then
  return mp.CLEAN
end
if #L3_3 > #L2_2 and string.sub(L3_3, 1, #L2_2) == L2_2 then
  return mp.INFECTED
end
return mp.CLEAN
