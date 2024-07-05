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
L0_0 = peattributes
L0_0 = L0_0.hasexports
if L0_0 ~= false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.readfile
L1_1 = pesecs
L2_2 = pehdr
L2_2 = L2_2.NumberOfSections
L1_1 = L1_1[L2_2]
L1_1 = L1_1.PointerToRawData
L2_2 = pesecs
L2_2 = L2_2[pehdr.NumberOfSections]
L2_2 = L2_2.SizeOfRawData
L1_1 = L1_1 + L2_2
L2_2 = 11
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.crc32
L2_2 = -1
L1_1 = L1_1(L2_2, L0_0, 1, 11)
if L1_1 ~= 2380235146 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData, 76)
mp.writeu_u8(L2_2, 25, L2_2:byte(26))
mp.writeu_u8(L2_2, 27, L2_2:byte(26))
mp.writeu_u8(L2_2, 28, L2_2:byte(26))
if mp.bitxor(mp.readu_u32(L2_2, 25), mp.readu_u32(L2_2, 72)) ~= 1684627301 then
  return mp.CLEAN
end
return mp.INFECTED
