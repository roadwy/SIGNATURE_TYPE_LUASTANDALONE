local L0_0, L1_1, L2_2, L4_3, L5_4
if L0_0 == 0 then
  return L0_0
end
for L4_3 = L0_0.SIGATTR_LOG_SZ, 1, -1 do
  L5_4 = sigattr_tail
  L5_4 = L5_4[L4_3]
  if L5_4.matched and not L5_4.utf8p2 then
    return mp.CLEAN
  end
end
return L0_0
