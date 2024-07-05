mp.readprotection(false)
if mp.getfilesize() < 256 then
  return mp.CLEAN
end
if mp.readu_u16(headerpage, 1) ~= 35615 then
  return mp.CLEAN
end
if mp.readu_u16(headerpage, 2) ~= 2187 then
  return mp.CLEAN
end
if mp.readu_u16(headerpage, 10) > 31245 then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:SingleFileInGZip")
return mp.CLEAN
