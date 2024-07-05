local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 == 2048 then
  L0_0 = mp
  L0_0 = L0_0.HEADERPAGE_SZ
elseif L0_0 < 2048 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = headerpage
L0_0 = L0_0[8]
if L0_0 ~= 63 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
for L4_4 = 1, 2040, 8 do
  L5_5 = mp
  L5_5 = L5_5.readu_u32
  L5_5 = L5_5(headerpage, L4_4)
  if L5_5 == 0 or mp.bitand(L5_5, 4278190080) == 4278190080 or mp.bitand(L5_5, 16711680) == 16711680 or mp.bitand(L5_5, 65280) == 65280 or mp.bitand(L5_5, 255) == 255 or L5_5 >= 4278059008 then
    return mp.CLEAN
  end
  if mp.readu_u32(headerpage, L4_4 + 4) <= 1056964608 or mp.readu_u32(headerpage, L4_4 + 4) >= 1072562176 then
    return mp.CLEAN
  end
  table.insert(L0_0, L5_5)
end
L1_1(L2_2)
for L5_5, _FORV_6_ in L2_2(L3_3) do
  if _FORV_6_ == L1_1 then
    return mp.CLEAN
  end
end
return L2_2
