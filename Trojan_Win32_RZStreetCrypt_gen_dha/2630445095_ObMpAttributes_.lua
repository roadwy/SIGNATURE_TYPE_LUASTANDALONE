local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 1)
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(headerpage, 5)
if L0_0 == 0 or L1_1 == 0 then
  return mp.CLEAN
end
if tostring(headerpage):find("\000", 1, true) == nil or tostring(headerpage):find("\000", 1, true) < 9 or tostring(headerpage):find("\000", 1, true) > 256 then
  return mp.CLEAN
end
if mp.bitxor(L0_0, mp.readu_u32(headerpage, tostring(headerpage):find("\000", 1, true) + 1)) ~= 15227469 then
  return mp.CLEAN
end
if mp.bitxor(L1_1, mp.readu_u32(headerpage, tostring(headerpage):find("\000", 1, true) + 5)) ~= 1526726656 then
  return mp.CLEAN
end
return mp.INFECTED
