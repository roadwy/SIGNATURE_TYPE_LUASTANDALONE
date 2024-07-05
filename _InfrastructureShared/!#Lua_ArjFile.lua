if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if mp.readu_u16(headerpage, 1) ~= 60000 then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:ArjFile")
return mp.CLEAN
