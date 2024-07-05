local L0_0, L1_1
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
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.NameDW
if L0_0 ~= 2019914798 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L1_1 = pehdr
L1_1 = L1_1.NumberOfSections
L0_0 = L0_0[L1_1]
L0_0 = L0_0.NameDW
if L0_0 ~= 1920168494 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 505)
if L0_0 ~= 1952539694 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 541)
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
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(headerpage, 525)
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
L1_1 = L1_1(843 + mp.readu_u32(headerpage, 525), 16)
if mp.crc32(-1, L1_1, 1, 16) ~= 343620366 then
  return mp.CLEAN
end
return mp.INFECTED
