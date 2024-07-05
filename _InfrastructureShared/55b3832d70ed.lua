local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(this_sigattrlog[1].utf8p2)
  L0_0 = L1_1
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L1_1 = L1_1(L0_0, "minidump (%d+) ")
if L1_1 and tonumber(L1_1) < 1500 then
  return mp.INFECTED
end
return mp.CLEAN
