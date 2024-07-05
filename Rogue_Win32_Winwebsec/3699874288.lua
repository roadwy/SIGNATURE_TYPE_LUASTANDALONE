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
if L0_0 ~= 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfImage
if L0_0 ~= 4386816 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pe.foffset_rva(pehdr.AddressOfEntryPoint) + 52, 42)
mp.writeu_u16(L0_0, 19, 0)
mp.writeu_u16(L0_0, 21, 0)
if mp.crc32(-1, L0_0, 1, 42) ~= 1822140877 then
  return mp.CLEAN
end
return mp.INFECTED
