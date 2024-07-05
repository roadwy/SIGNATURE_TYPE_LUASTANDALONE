if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) == 1145330259 and mp.readu_u32(headerpage, 5) == 858255496 then
  mp.set_mpattribute("LUA:MS_SZDD_winsfx")
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) == 1245796171 and mp.readu_u32(headerpage, 5) == 3509055624 then
  mp.set_mpattribute("LUA:MS_KWAJ_winsfx")
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) == 5 and mp.readu_u32(headerpage, 5) == 1 then
  mp.set_mpattribute("LUA:PakFileHdr")
  return mp.CLEAN
end
return mp.CLEAN
