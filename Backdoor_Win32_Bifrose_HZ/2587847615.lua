local L0_0
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 2 then
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
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(epcode, 1)
if L0_0 ~= 2213317461 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(epcode, 5)
if L0_0 ~= 4283843820 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pe.foffset_rva(pehdr.AddressOfEntryPoint) - 25672, 17408)
if mp.crc32(-1, L0_0, 1, 17408) ~= 2273450232 then
  return mp.CLEAN
end
return mp.INFECTED
