local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("Themida_Attr")
if L0_0 ~= true then
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
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 6 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections - 1]
L0_0 = L0_0.Characteristics
if L0_0 ~= 3758096448 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[1]
L0_0 = L0_0.RVA
if mp.getfilesize() > 881664 then
  return mp.CLEAN
end
if mp.getfilesize() < 778240 then
  return mp.CLEAN
end
if pe.contains_rva(5, L0_0) ~= true then
  return mp.CLEAN
end
if pehdr.DataDirectory[2].Size ~= 149 then
  return mp.CLEAN
end
mp.set_mpattribute("HSTR:Win32/Miuref_Themida")
return mp.CLEAN
