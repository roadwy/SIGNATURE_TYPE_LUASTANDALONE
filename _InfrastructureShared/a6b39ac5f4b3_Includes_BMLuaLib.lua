local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
if L0_0 then
  L1_1 = L0_0.matched
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
if not L1_1 or not L1_1.matched then
  return mp.CLEAN
end
if not ProcessCodeInjection(L0_0, L1_1) then
  return mp.CLEAN
end
return mp.INFECTED
