local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfImage
if L0_0 < 282624 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfImage
if L0_0 > 344064 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[2]
L0_0 = L0_0.Size
if L0_0 < 192 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[2]
L0_0 = L0_0.Size
if L0_0 > 240 then
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
L0_0 = L0_0.epinfirstsect
if L0_0 ~= true then
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
L0_0 = L0_0.no_relocs
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pevars
L0_0 = L0_0.epsec
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
if L0_0 > L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pevars
L1_1 = L1_1.epsec
L0_0 = L0_0[L1_1]
L0_0 = L0_0.VirtualAddress
if L0_0 ~= 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pevars
L1_1 = L1_1.epsec
L0_0 = L0_0[L1_1]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pevars
L1_1 = L1_1.epsec
L0_0 = L0_0[L1_1]
L0_0 = L0_0.SizeOfRawData
if L0_0 > 8192 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.VirtualAddress
if L0_0 > 20480 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.VirtualAddress
if L0_0 < 12288 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 262144 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.SizeOfRawData
if L0_0 > 323584 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
