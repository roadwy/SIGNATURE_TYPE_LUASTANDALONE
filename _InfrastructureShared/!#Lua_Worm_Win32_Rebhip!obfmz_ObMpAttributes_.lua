if mp.getfilesize() < 16192 or mp.getfilesize() > 2097152 then
  return mp.CLEAN
end
if 870557218 == mp.crc32(0, headerpage, 1, 16) then
  return mp.INFECTED
end
return mp.CLEAN
