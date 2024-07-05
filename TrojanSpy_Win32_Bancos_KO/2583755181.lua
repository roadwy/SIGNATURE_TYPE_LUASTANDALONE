local L0_0
L0_0 = peattributes
L0_0 = L0_0.isexe
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
if L0_0 <= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[pehdr.NumberOfSections]
L0_0 = L0_0.SizeOfRawData
if L0_0 < 1726 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L0_0(false)
L0_0 = mp
L0_0 = L0_0.readfile
L0_0 = L0_0(pesecs[pehdr.NumberOfSections].PointerToRawData + 1166, 560)
if mp.readu_u16(L0_0, 523) ~= 115 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 525) ~= 118 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 527) ~= 104 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 529) ~= 111 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 531) ~= 111 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 533) ~= 116 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 535) ~= 115 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 537) ~= 115 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 539) ~= 46 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 541) ~= 101 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 543) ~= 120 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 545) ~= 101 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 489) ~= 79 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 491) ~= 114 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 493) ~= 105 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 495) ~= 103 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 497) ~= 105 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 499) ~= 110 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 501) ~= 97 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 503) ~= 108 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 505) ~= 70 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 507) ~= 105 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 509) ~= 108 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 511) ~= 101 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 513) ~= 110 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 515) ~= 97 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 517) ~= 109 then
  return mp.CLEAN
end
if mp.readu_u16(L0_0, 519) ~= 101 then
  return mp.CLEAN
end
if mp.crc32(-1, L0_0, 1, 370) ~= 8693852 then
  return mp.CLEAN
end
return mp.INFECTED
