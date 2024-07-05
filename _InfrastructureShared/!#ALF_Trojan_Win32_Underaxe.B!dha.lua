if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if mp.readu_u16(headerpage, 1) == 0 or mp.readu_u16(headerpage, 3) == 0 or mp.readu_u16(headerpage, 1) + 8 > mp.HEADERPAGE_SZ or mp.readu_u16(headerpage, 3) > mp.HEADERPAGE_SZ then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, mp.readu_u16(headerpage, 1) + 1) == 610044232 and mp.readu_u32(headerpage, mp.readu_u16(headerpage, 1) + 5) == 1465275656 and headerpage[mp.readu_u16(headerpage, 3)] == 195 then
  mp.set_mpattribute("MpNonPIIFileType")
  return mp.INFECTED
end
return mp.CLEAN
