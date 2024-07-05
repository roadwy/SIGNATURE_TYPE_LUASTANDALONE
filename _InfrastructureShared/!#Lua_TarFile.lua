if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 258) ~= 1635021685 then
  return mp.CLEAN
end
if headerpage[262] ~= 114 then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:TarFile")
return mp.CLEAN
