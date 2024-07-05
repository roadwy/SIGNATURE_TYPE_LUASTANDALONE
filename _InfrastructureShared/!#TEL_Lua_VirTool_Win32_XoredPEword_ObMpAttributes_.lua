local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 <= 60 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if 0 == L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if L0_0 <= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = headerpage
L1_1 = L1_1[63]
if 0 ~= L1_1 then
  L1_1 = headerpage
  L1_1 = L1_1[64]
elseif 0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = headerpage
L1_1 = L1_1[63]
L2_2 = headerpage
L2_2 = L2_2[64]
if L1_1 == L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = headerpage
L1_1 = L1_1[63]
L2_2 = headerpage
L2_2 = L2_2[64]
if 77 ~= mp.bitxor(headerpage[1], L1_1) then
  return mp.CLEAN
end
if 90 ~= mp.bitxor(headerpage[2], L2_2) then
  return mp.CLEAN
end
if 1 + mp.bitxor(headerpage[61], L1_1) + mp.bitxor(headerpage[62], L2_2) * 256 <= mp.HEADERPAGE_SZ - 4 then
  if 80 ~= mp.bitxor(headerpage[1 + mp.bitxor(headerpage[61], L1_1) + mp.bitxor(headerpage[62], L2_2) * 256], L1_1) then
    return mp.CLEAN
  end
  if 69 ~= mp.bitxor(headerpage[1 + mp.bitxor(headerpage[61], L1_1) + mp.bitxor(headerpage[62], L2_2) * 256 + 1], L2_2) then
    return mp.CLEAN
  end
  if L1_1 ~= headerpage[1 + mp.bitxor(headerpage[61], L1_1) + mp.bitxor(headerpage[62], L2_2) * 256 + 2] then
    return mp.CLEAN
  end
  if L2_2 ~= headerpage[1 + mp.bitxor(headerpage[61], L1_1) + mp.bitxor(headerpage[62], L2_2) * 256 + 3] then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
