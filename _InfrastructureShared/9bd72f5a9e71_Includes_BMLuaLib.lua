local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L0_0)
if not L1_1 then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
for _FORV_6_ in L1_1:gmatch("'%w:\\'%s*;") do
end
if 0 + 1 < 3 then
  return mp.CLEAN
end
if contains(L1_1, "*.*") then
  return mp.INFECTED
end
return mp.CLEAN
