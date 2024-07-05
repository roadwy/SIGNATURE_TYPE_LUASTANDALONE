local L0_0
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 5 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfImage
if L0_0 ~= 942080 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(headerpage, 273)
if L0_0 ~= 81920 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(1024, 32)
if mp.crc32(-1, L0_0, 1, 32) ~= 1903186665 then
  return mp.CLEAN
end
return mp.INFECTED
