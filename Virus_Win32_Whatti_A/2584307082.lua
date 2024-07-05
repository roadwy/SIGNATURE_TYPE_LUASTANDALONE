local L0_0, L1_1, L2_2, L3_3
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasappendeddata
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
L0_0 = pevars
L0_0 = L0_0.epsec
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
if L0_0 > L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pevars
L1_1 = L1_1.epsec
L0_0 = L0_0[L1_1]
L0_0 = L0_0.NameDW
if L0_0 ~= 827871317 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 576096 then
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
L1_1 = pesecs
L2_2 = pevars
L2_2 = L2_2.epsec
L1_1 = L1_1[L2_2]
L1_1 = L1_1.PointerToRawData
L2_2 = 18368
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.crc32
L2_2 = -1
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3, 1, 32)
if L1_1 ~= 3139778117 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.crc32
L3_3 = -1
L2_2 = L2_2(L3_3, L0_0, 1, 18368)
if L2_2 ~= 3677223986 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readfile
L3_3 = L3_3(pesecs[pehdr.NumberOfSections].PointerToRawData, 8192)
if mp.crc32(-1, L3_3, 7681, 512) ~= 1744860000 then
  return mp.CLEAN
end
return mp.INFECTED
