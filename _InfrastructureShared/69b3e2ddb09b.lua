local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.wp1
for L4_4 = L1_1.SIGATTR_LOG_SZ, 1, -1 do
  if (sigattr_tail[L4_4].attribute == 16384 or sigattr_tail[L4_4].attribute == 16385) and sigattr_tail[L4_4].wp1 == L0_0 then
    bm.add_related_file(L0_0)
    return mp.INFECTED
  end
end
return L1_1
