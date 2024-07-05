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
if L0_0 ~= 819200 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(headerpage, 649)
if L0_0 ~= 1936487470 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(headerpage, 685)
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
L0_0 = L0_0(pe.foffset_rva(pehdr.AddressOfEntryPoint), 23)
mp.writeu_u32(L0_0, 17, 0)
if mp.crc32(-1, L0_0, 1, 23) ~= 1897054316 then
  return mp.CLEAN
end
return mp.INFECTED
