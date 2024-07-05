local L0_0, L1_1
L0_0 = sigattr_tail
L1_1 = mp
L1_1 = L1_1.SIGATTR_LOG_SZ
L0_0 = L0_0[L1_1]
L0_0 = L0_0.matched
if L0_0 == true then
  L0_0 = sigattr_tail
  L1_1 = mp
  L1_1 = L1_1.SIGATTR_LOG_SZ
  L0_0 = L0_0[L1_1]
  L0_0 = L0_0.attribute
  if L0_0 == 12352 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
