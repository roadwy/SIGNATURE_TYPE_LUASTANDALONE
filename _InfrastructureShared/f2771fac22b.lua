if mp.get_mpattribute("Lua:FileSizeLT2000") then
  return mp.INFECTED
end
return mp.CLEAN
