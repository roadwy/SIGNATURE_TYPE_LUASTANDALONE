local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 256 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 5)
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
L1_1 = L1_1 - 12
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.bitxor
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L1_1 = L1_1(headerpage, 1)
  L0_0 = L0_0(L1_1, mp.readu_u32(headerpage, 9))
  if L0_0 >= 65536 and L0_0 < 262144 then
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L1_1 = L1_1(headerpage, 1)
    L1_1 = L1_1 + mp.shr32(L1_1, 1)
    L1_1 = L1_1 - mp.shl32(L1_1, 2)
    L1_1 = L1_1 - mp.shr32(L1_1, 3)
    L1_1 = L1_1 * 17
    L1_1 = L1_1 - mp.shl32(L1_1, 2)
    L1_1 = L1_1 - mp.shr32(L1_1, 3)
    L1_1 = L1_1 * 17
    L1_1 = L1_1 - mp.shr32(L1_1, 3)
    L1_1 = L1_1 * 17
    L1_1 = L1_1 * 17
    if mp.bitxor(headerpage[16], mp.bitand(L1_1, 255)) ~= 77 then
      return mp.CLEAN
    end
    L1_1 = L1_1 + mp.shr32(L1_1, 1)
    L1_1 = L1_1 - mp.shl32(L1_1, 2)
    L1_1 = L1_1 - mp.shr32(L1_1, 3)
    L1_1 = L1_1 * 17
    if mp.bitxor(headerpage[17], mp.bitand(L1_1, 255)) ~= 90 then
      return mp.CLEAN
    end
    mp.set_mpattribute("MpNonPIIFileType")
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
