if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) ~= 2019846262 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 5) ~= 1701603686 then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:VhdxFile")
return mp.CLEAN
