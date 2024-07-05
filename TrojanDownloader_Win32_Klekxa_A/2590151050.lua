local L0_0
L0_0 = pevars
L0_0 = L0_0.epsec
if L0_0 == 1 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
elseif L0_0 ~= 2 then
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
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pe.foffset_rva(pehdr.AddressOfEntryPoint) - 918, 768)
if mp.crc32(-1, L0_0, 1, 768) ~= 3718490045 then
  return mp.CLEAN
end
return mp.INFECTED
