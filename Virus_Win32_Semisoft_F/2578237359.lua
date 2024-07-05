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
if L0_0 ~= 40448 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.AddressOfEntryPoint
if L0_0 ~= 19968 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pesecs[pevars.epsec].PointerToRawData + 1600, 1024)
if mp.crc32(-1, L0_0, 1, 1024) ~= 2106590491 then
  return mp.CLEAN
end
return mp.INFECTED
