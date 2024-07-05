if mp.HEADERPAGE_SZ < 128 or mp.FOOTERPAGE_SZ < 22 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) ~= 67324752 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 19) > 4194304 then
  return mp.CLEAN
end
if 128 < mp.readu_u16(headerpage, 27) or mp.readu_u16(headerpage, 27) < 4 or mp.readu_u16(headerpage, 27) + 31 > mp.HEADERPAGE_SZ then
  return mp.CLEAN
end
if mp.readu_u32(footerpage, mp.FOOTERPAGE_SZ - 21) == 101010256 then
  if mp.readu_u16(footerpage, mp.FOOTERPAGE_SZ - 11) ~= 1 then
    return mp.CLEAN
  end
else
  if mp.readu_u32(footerpage, mp.FOOTERPAGE_SZ - (mp.getfilesize() - (30 + mp.readu_u16(headerpage, 27) + mp.readu_u32(headerpage, 19) + mp.readu_u16(headerpage, 29) + 1 + 46 + mp.readu_u16(headerpage, 27)))) ~= 101010256 then
    return mp.CLEAN
  end
  if mp.readu_u16(footerpage, mp.FOOTERPAGE_SZ - (mp.getfilesize() - (30 + mp.readu_u16(headerpage, 27) + mp.readu_u32(headerpage, 19) + mp.readu_u16(headerpage, 29) + 1 + 46 + mp.readu_u16(headerpage, 27))) + 10) ~= 1 then
    return mp.CLEAN
  end
end
if string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) ~= "exe" and string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) ~= "pif" and string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) ~= "scr" and string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) ~= ".js" and string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) ~= "jse" and string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) ~= "vbs" and string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) ~= "vbe" and string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) ~= "diagcab" then
  return mp.CLEAN
end
if string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) == ".js" or string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) == "jse" then
  mp.set_mpattribute("//LuaZipWithSingleJS")
end
if string.lower(string.char(headerpage[31 + mp.readu_u16(headerpage, 27) - 3], headerpage[31 + mp.readu_u16(headerpage, 27) - 2], headerpage[31 + mp.readu_u16(headerpage, 27) - 1])) == ".diagcab" then
  mp.set_mpattribute("//LuaZipWithSingleDiagCab")
end
if mp.getfilesize() < 4000 then
  mp.set_mpattribute("//LuaZipLT4kbWithSingleFile")
end
return mp.INFECTED
