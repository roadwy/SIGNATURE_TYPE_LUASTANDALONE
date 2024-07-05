local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.utf8p1
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.utf8p2
if not L0_0 or not L1_1 then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if string.find(L0_0, "\\temp\\", 1, true) then
  return mp.CLEAN
end
L0_0 = string.match(L0_0, "([^\\]+)$")
if string.find(L0_0, "unins", 1, true) then
  return mp.CLEAN
end
L1_1 = string.lower(string.match(L1_1, "([^\\]+)$"))
if L0_0 ~= L1_1 then
  return mp.INFECTED
end
return mp.CLEAN
