local L0_0, L1_1
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
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L1_1 = L1_1 - 1
L0_0 = L0_0[L1_1]
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
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L1_1 = L1_1[2]
L1_1 = L1_1.Size
if mp.getfilesize() > 1324032 then
  return mp.CLEAN
end
if mp.getfilesize() < 1142784 then
  return mp.CLEAN
end
if pe.contains_rva(5, L0_0) ~= true then
  return mp.CLEAN
end
if L1_1 ~= 149 then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:Miuref_DLL")
return mp.CLEAN
