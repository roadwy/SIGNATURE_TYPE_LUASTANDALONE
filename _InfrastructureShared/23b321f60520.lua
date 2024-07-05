local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p2
L0_0 = L0_0(L1_1)
L2_2 = L0_0
L1_1 = L0_0.find
L1_1 = L1_1(L2_2, " /n ", 1, true)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "|/xb|/in|/un|/u0|/u1|/rt|/i0|/i1|/i2|/b1|/p1|/up|/va|/vxxv|/mkey|/cp|"
L2_2 = L0_0.match
L2_2 = L2_2(L0_0, "/i:\"(/%w+)\"")
if L2_2 == nil or L2_2 == "" or L1_1:find("|" .. L2_2 .. "|", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
