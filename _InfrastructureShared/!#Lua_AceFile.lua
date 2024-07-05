if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 8) ~= 1128344106 then
  return mp.CLEAN
end
if mp.readu_u16(headerpage, 12) ~= 10821 then
  return mp.CLEAN
end
if headerpage[14] ~= 42 then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:AceFile")
return mp.CLEAN
