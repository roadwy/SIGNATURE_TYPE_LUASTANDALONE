local L0_0
L0_0 = peattributes
L0_0 = L0_0.no_relocs
if L0_0 ~= false then
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
L0_0 = peattributes
L0_0 = L0_0.hasexports
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasstandardentry
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.NameDW
if L0_0 ~= 2019914798 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.NameDW
if L0_0 == 1920168494 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[3]
L0_0 = L0_0.Size
if L0_0 == 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[6]
L0_0 = L0_0.Size
if L0_0 < 8 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pe.foffset_rva(pehdr.DataDirectory[6].RVA), 16)
if mp.readu_u32(L0_0, 1) ~= 0 then
  return mp.CLEAN
end
if mp.readu_u32(L0_0, 9) ~= 0 then
  return mp.CLEAN
end
if mp.readu_u32(L0_0, 13) ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED
