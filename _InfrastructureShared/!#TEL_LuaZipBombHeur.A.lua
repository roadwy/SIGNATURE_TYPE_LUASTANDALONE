local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 128 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 1)
if L0_0 ~= 67324752 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = 10
L1_1 = 1
while L0_0 > 1 and L1_1 + 30 < mp.HEADERPAGE_SZ do
  if mp.readu_u32(headerpage, L1_1) ~= 67324752 then
    return mp.CLEAN
  end
  if mp.readu_u32(headerpage, L1_1 + 18) > 0 and mp.readu_u32(headerpage, L1_1 + 18) < mp.readu_u32(headerpage, L1_1 + 22) and mp.readu_u32(headerpage, L1_1 + 22) > 10485760 and mp.readu_u32(headerpage, L1_1 + 22) / mp.readu_u32(headerpage, L1_1 + 18) > 11000 then
    return mp.INFECTED
  end
  L1_1 = L1_1 + 30 + mp.readu_u16(headerpage, L1_1 + 26) + mp.readu_u32(headerpage, L1_1 + 18) + mp.readu_u16(headerpage, L1_1 + 28)
end
return mp.CLEAN
