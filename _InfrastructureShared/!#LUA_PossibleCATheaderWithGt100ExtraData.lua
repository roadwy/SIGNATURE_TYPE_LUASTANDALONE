if mp.readu_u16(headerpage, 1) ~= 33328 then
  return mp.CLEAN
end
if 256 > headerpage[3] * 256 + headerpage[4] + 4 then
  return mp.CLEAN
end
if headerpage[3] * 256 + headerpage[4] + 4 >= mp.getfilesize() then
  return mp.CLEAN
end
if 256 > mp.getfilesize() - (headerpage[3] * 256 + headerpage[4] + 4) then
  return mp.CLEAN
end
return mp.INFECTED
