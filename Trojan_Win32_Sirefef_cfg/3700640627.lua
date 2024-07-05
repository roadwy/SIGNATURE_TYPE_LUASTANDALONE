local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
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
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = headerpage
L1_1 = L1_1[6]
L2_2 = headerpage
L2_2 = L2_2[7]
if L0_0 == L2_2 and L2_2 == L1_1 then
  return L3_3
end
for L6_6 = 9, 2040, 8 do
  if L0_0 ~= headerpage[L6_6 + 7] or L2_2 ~= headerpage[L6_6 + 6] then
    return mp.CLEAN
  end
  if L6_6 < 32 then
    if L1_1 ~= headerpage[L6_6 + 5] then
      return mp.CLEAN
    end
  elseif L1_1 - headerpage[L6_6 + 5] < -1 or L1_1 - headerpage[L6_6 + 5] > 1 then
    return mp.CLEAN
  end
end
L6_6 = 2045
if L3_3 <= L4_4 then
  return L3_3
end
for L6_6 = 1, 2016, 8 do
  if mp.readu_u32(headerpage, L6_6) == mp.readu_u32(headerpage, L6_6 + 8) or mp.readu_u32(headerpage, L6_6) == mp.readu_u32(headerpage, L6_6 + 16) or mp.readu_u32(headerpage, L6_6 + 8) == mp.readu_u32(headerpage, L6_6 + 16) then
    return mp.CLEAN
  end
end
return L3_3
