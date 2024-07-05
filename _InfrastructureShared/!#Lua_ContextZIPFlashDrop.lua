if mp.HEADERPAGE_SZ < 1024 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) ~= 67324752 then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)) ~= nil and string.lower(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME)):sub(1, 9) == "flashutil" then
  if not true then
    if mp.readu_u16(headerpage, 9) == 0 then
      mp.set_mpattribute("Lua:ContextZIPNoCompressionFlashDrop.A")
    else
      mp.set_mpattribute("Lua:ContextZIPFlashDrop.A")
    end
  end
end
return mp.CLEAN
