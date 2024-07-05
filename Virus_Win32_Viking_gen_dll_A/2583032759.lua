local L0_0
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 < 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.VirtualSize
if L0_0 ~= 40960 then
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
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.PointerToRawData
if L0_0 ~= 512 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pevars
L0_0 = L0_0.epsec
if L0_0 > pehdr.NumberOfSections then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.PointerToRawData
if L0_0 ~= 512 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.VirtualAddress
if L0_0 ~= 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.lastscn_writable
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.epscn_writable
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.firstsectwritable
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[3]
L0_0 = L0_0.RVA
if L0_0 ~= 45056 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.VirtualSize
if L0_0 < 28672 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pevars.epsec]
L0_0 = L0_0.VirtualSize
if L0_0 > 40960 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(512, 1024)
if mp.crc32(-1, L0_0, 1, 1024) ~= 1093127814 then
  return mp.CLEAN
end
return mp.INFECTED
