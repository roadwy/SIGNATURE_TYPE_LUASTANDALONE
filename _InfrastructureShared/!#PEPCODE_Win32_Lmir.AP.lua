local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = epcode
L0_0 = L0_0[16]
if L0_0 ~= 255 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.entrybyte55
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
L0_0 = L0_0.DataDirectory
L0_0 = L0_0[6]
L0_0 = L0_0.Size
if L0_0 <= 0 then
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
L1_1 = L1_1(pehdr.DataDirectory[1].RVA)
L0_0 = L0_0(L1_1, 32)
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(L0_0, 13)
if L1_1 <= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(L0_0, 25)
if L1_1 <= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(pe.foffset_rva(mp.readu_u32(L0_0, 13)), 12)
if mp.crc32(-1, L1_1, 1, 12) ~= 1965254513 then
  return mp.CLEAN
end
return mp.INFECTED
