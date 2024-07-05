local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_TRUSTCHECK
elseif L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(42)
if crypto.bitand(L1_1, 2) == 2 then
  return mp.INFECTED
end
if mp.IsTrustedFile(false) == false then
  return mp.INFECTED
end
return mp.CLEAN
