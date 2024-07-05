if mp.IOAVGetDownloadUrl() == nil then
  return mp.CLEAN
end
if mp.get_mpattribute("Lua:FlashPlayerHTA") then
  return mp.INFECTED
end
if mp.get_mpattribute("Lua:FlashPlayerJSE") then
  return mp.INFECTED
end
return mp.CLEAN
