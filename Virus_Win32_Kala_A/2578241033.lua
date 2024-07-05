if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if mp.readu_u16(epcode, 1) ~= 11616 then
  return mp.CLEAN
end
if epcode[7] ~= 187 then
  return mp.CLEAN
end
if epcode[12] ~= 185 then
  return mp.CLEAN
end
if mp.crc32(-1, epcode, 17, 19) ~= 1894062762 then
  return mp.CLEAN
end
if mp.readu_u32(epcode, 13) - pehdr.ImageBase - pesecs[pehdr.NumberOfSections].VirtualAddress ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED
