local L0_0
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 <= 5 then
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
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.SizeOfRawData
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(headerpage, 433)
if L0_0 ~= 2048 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(mp.readu_u32(headerpage, 437), 1280)
if mp.crc32(-1, L0_0, 1, 240) ~= 1584319641 then
  return mp.CLEAN
end
if mp.crc32(-1, L0_0, 273, 768) ~= 2930427897 then
  return mp.CLEAN
end
return mp.INFECTED
