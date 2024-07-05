local L0_0, L1_1, L2_2
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
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 4 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[3]
L0_0 = L0_0.Size
if L0_0 <= 8192 then
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
L2_2 = pehdr
L2_2 = L2_2.DataDirectory
L2_2 = L2_2[3]
L2_2 = L2_2.RVA
L1_1 = L1_1(L2_2)
L2_2 = 28
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L1_1 = L1_1(L2_2, 1)
if L1_1 ~= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L1_1 = L1_1(L2_2, 5)
if L1_1 ~= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L1_1 = L1_1(L2_2, 9)
if L1_1 ~= 4 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L1_1 = L1_1(L2_2, 13)
if L1_1 ~= 196608 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L1_1 = L1_1(L2_2, 17)
if L1_1 ~= 3 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L1_1 = L1_1(L2_2, 21)
if L1_1 ~= 2147483688 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L1_1 = L1_1(L2_2, 25)
if L1_1 ~= 10 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = doshdr
L2_2 = L2_2.e_lfanew
L2_2 = L2_2 + pehdr.SizeOfOptionalHeader
L2_2 = L2_2 + 24
L2_2 = L2_2 + 80
L1_1 = L1_1(L2_2, 40)
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(mp.readu_u32(L1_1, 21), 112)
if mp.readu_u32(L2_2, 1) ~= 0 then
  return mp.CLEAN
end
if mp.readu_u16(L2_2, 5) ~= 4096 then
  return mp.CLEAN
end
if mp.crc32(-1, L2_2, 1, 112) ~= 1254192188 then
  return mp.CLEAN
end
return mp.INFECTED
