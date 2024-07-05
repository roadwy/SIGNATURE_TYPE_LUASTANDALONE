local L0_0
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
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pesecs[pehdr.NumberOfSections].PointerToRawData + pesecs[pehdr.NumberOfSections].SizeOfRawData, 76)
if mp.crc32(-1, L0_0, 1, 11) ~= 1339394596 then
  return mp.CLEAN
end
mp.writeu_u8(L0_0, 25, L0_0:byte(26))
mp.writeu_u8(L0_0, 27, L0_0:byte(26))
mp.writeu_u8(L0_0, 28, L0_0:byte(26))
if mp.bitxor(mp.readu_u32(L0_0, 25), mp.readu_u32(L0_0, 41)) ~= 1631338087 then
  return mp.CLEAN
end
if mp.bitxor(mp.readu_u32(L0_0, 25), mp.readu_u32(L0_0, 45)) ~= 1768448882 then
  return mp.CLEAN
end
if mp.bitxor(mp.readu_u32(L0_0, 25), mp.readu_u32(L0_0, 49)) ~= 1767859574 then
  return mp.CLEAN
end
return mp.INFECTED
