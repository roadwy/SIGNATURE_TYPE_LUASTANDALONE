if mp.getfilesize() > 1048576 or mp.getfilesize() < 4096 then
  return mp.CLEAN
end
if headerpage[1] == 219 and mp.readu_u16(headerpage, 4) == 26313 and headerpage[6] == 185 and mp.readu_u32(headerpage, 9) == 4294967272 and headerpage[13] == 255 and headerpage[21] == 49 and headerpage[22] == headerpage[25] and headerpage[23] == headerpage[26] and headerpage[24] == 3 and headerpage[27] == 131 then
  return mp.INFECTED
end
return mp.CLEAN
