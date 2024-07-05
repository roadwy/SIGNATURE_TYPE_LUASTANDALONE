local L0_0
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 4 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfImage
if L0_0 ~= 1953792 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.VirtualSize
if L0_0 ~= 610304 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(headerpage, 593)
if L0_0 ~= 446464 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(headerpage, 597)
if L0_0 ~= 618496 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(headerpage, 621)
if L0_0 ~= 3221225536 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pe.foffset_rva(pehdr.AddressOfEntryPoint), 120)
if mp.crc32(-1, L0_0, 1, 120) ~= 2882220958 then
  return mp.CLEAN
end
return mp.INFECTED
