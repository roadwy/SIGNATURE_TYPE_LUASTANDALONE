if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if mp.readu_u16(headerpage, 1) == 640 then
  mp.set_mpattribute("Lua:PKL_Protocol_V2")
elseif mp.readu_u16(headerpage, 1) == 896 then
  mp.set_mpattribute("Lua:PKL_Protocol_V3")
elseif mp.readu_u16(headerpage, 1) == 1152 then
  mp.set_mpattribute("Lua:PKL_Protocol_V4")
elseif mp.readu_u16(headerpage, 1) == 1408 then
  mp.set_mpattribute("Lua:PKL_Protocol_V5")
end
if true then
  mp.set_mpattribute("BM_PKL_FILE")
end
return mp.CLEAN
