if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) ~= mp.getfilesize() then
  return mp.CLEAN
end
if mp.readheader(44, 16) == "\254\255\255\255\001\000\000\000\v\000\000\000\001\000\000\000" then
  return mp.INFECTED
end
return mp.CLEAN
