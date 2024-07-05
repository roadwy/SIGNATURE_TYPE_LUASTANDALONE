local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 5 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.SizeOfImage
if L0_0 ~= 241664 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 593)
if L0_0 ~= 188416 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 597)
if L0_0 ~= 36864 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 621)
if L0_0 ~= 3758096448 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.readfile
L1_1 = pe
L1_1 = L1_1.foffset_rva
L1_1 = L1_1(36864)
L0_0 = L0_0(L1_1, 2)
L1_1 = mp
L1_1 = L1_1.readu_u16
L1_1 = L1_1(L0_0, 1)
if L1_1 ~= 19031 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(pe.foffset_rva(39040), 48)
if mp.crc32(-1, L1_1, 1, 48) ~= 1794013526 then
  return mp.CLEAN
end
return mp.INFECTED
