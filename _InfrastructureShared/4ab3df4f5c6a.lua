local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
if string.find(L1_1, "\\program files\\", 1, true) ~= nil or string.find(L1_1, "\\program files (x86)\\", 1, true) ~= nil or string.find(L1_1, "\\appdata\\", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
