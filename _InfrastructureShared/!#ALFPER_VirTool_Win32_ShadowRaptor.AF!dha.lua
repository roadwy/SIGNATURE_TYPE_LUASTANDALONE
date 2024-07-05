local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readu_u16
L1_1 = headerpage
L0_0 = L0_0(L1_1, 1)
if L0_0 == 23117 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 65536 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.bitxor
L1_1 = L1_1(mp.readu_u32(headerpage, 1), 3688618971)
if L1_1 == 0 then
  return mp.CLEAN
end
if mp.bitxor(mp.readu_u32(headerpage, 5), L1_1) == 2305 and mp.bitxor(mp.readu_u32(headerpage, 9), L1_1) == 1801666816 and mp.bitxor(mp.readu_u32(headerpage, 13), L1_1) == 1836216134 then
  mp.set_mpattribute("MpNonPIIFileType")
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN
