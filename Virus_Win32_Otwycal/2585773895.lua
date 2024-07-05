local L0_0
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.NameDW
if L0_0 ~= 1129928494 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.epscn_islast
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.PointerToRawData
L0_0 = L0_0 + pesecs[pehdr.NumberOfSections].SizeOfRawData
L0_0 = L0_0 - mp.getfilesize()
if L0_0 <= 0 then
  return mp.CLEAN
end
if mp.crc32(-1, epcode, 1, 64) ~= 148363345 then
  return mp.CLEAN
end
return mp.INFECTED
