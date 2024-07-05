local L0_0
L0_0 = pevars
L0_0 = L0_0.epsec
if L0_0 > pehdr.NumberOfSections then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.SizeOfRawData
if L0_0 ~= 77824 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitand
L0_0 = L0_0(pesecs[pevars.epsec].VirtualSize, 73728)
if L0_0 ~= 73728 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.Characteristics
if L0_0 ~= 1610612768 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 <= 4 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pesecs[pevars.epsec].PointerToRawData + 256, 256)
if mp.crc32(-1, L0_0, 1, 29) ~= 3571610125 then
  return mp.CLEAN
end
if mp.crc32(-1, L0_0, 96, 16) ~= 1775081905 then
  return mp.CLEAN
end
return mp.INFECTED
