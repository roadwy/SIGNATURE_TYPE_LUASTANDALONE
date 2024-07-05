local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L1_1 = L0_0.utf8p1
if L1_1 then
  L1_1 = L0_0.utf8p2
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.utf8p1
L2_2 = L0_0.utf8p2
if string.match(L1_1, "Token:\"([%a%d]+)\";") ~= string.match(L2_2, "Token:\"([%a%d]+)\";") and string.match(L2_2, "Token:\"([%a%d]+)\";") == string.match(L2_2, "SystemToken:\"([%a%d]+)\";") then
  return mp.INFECTED
end
return mp.CLEAN
