local L0_0, L1_1
L0_0 = sigattr_head
L0_0 = L0_0[1]
L0_0 = L0_0.attribute
if L0_0 == 12363 then
  L0_0 = sigattr_tail
  L1_1 = mp
  L1_1 = L1_1.SIGATTR_LOG_SZ
  L0_0 = L0_0[L1_1]
  L0_0 = L0_0.attribute
else
  if L0_0 ~= 12375 then
    L0_0 = sigattr_tail
    L1_1 = mp
    L1_1 = L1_1.SIGATTR_LOG_SZ
    L0_0 = L0_0[L1_1]
    L0_0 = L0_0.attribute
end
elseif L0_0 == 12381 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
