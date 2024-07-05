if mp.get_contextdata(mp.CONTEXT_DATA_FILE_AGE) == nil then
  return mp.CLEAN
end
if mp.get_contextdata(mp.CONTEXT_DATA_FILE_AGE) < 86400 then
  mp.set_mpattribute("Lua:FileCreatedLT1d")
end
if mp.get_contextdata(mp.CONTEXT_DATA_FILE_AGE) < 604800 then
  mp.set_mpattribute("Lua:FileCreatedLT7d")
else
  mp.set_mpattribute("Lua:FileCreatedGT7d")
end
return mp.CLEAN
