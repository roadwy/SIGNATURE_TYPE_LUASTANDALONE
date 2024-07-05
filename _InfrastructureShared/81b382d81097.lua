local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  end
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(string.sub(L0_0, -1))
if L1_1 ~= "\\" or L1_1 ~= "/" then
  return mp.INFECTED
end
return mp.CLEAN
