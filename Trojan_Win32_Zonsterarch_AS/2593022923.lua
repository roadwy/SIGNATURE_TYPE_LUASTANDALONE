local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.PointerToRawData
L1_1 = pesecs
L2_2 = pehdr
L2_2 = L2_2.NumberOfSections
L1_1 = L1_1[L2_2]
L1_1 = L1_1.SizeOfRawData
L0_0 = L0_0 + L1_1
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L0_0 < L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(L0_0, 76)
if mp.crc32(-1, L2_2, 1, 11) ~= 1339394596 then
  return mp.CLEAN
end
mp.writeu_u8(L2_2, 25, L2_2:byte(26))
mp.writeu_u8(L2_2, 27, L2_2:byte(26))
mp.writeu_u8(L2_2, 28, L2_2:byte(26))
if mp.bitxor(mp.readu_u32(L2_2, 25), mp.readu_u32(L2_2, 45)) ~= 1918975008 then
  return mp.CLEAN
end
if mp.bitxor(mp.readu_u32(L2_2, 25), mp.readu_u32(L2_2, 49)) ~= 1986619491 then
  return mp.CLEAN
end
if mp.bitxor(mp.readu_u32(L2_2, 25), mp.readu_u32(L2_2, 53)) ~= 1701076837 then
  return mp.CLEAN
end
return mp.INFECTED
