if mp.get_mpattribute("LUA:FileSizeGT1M.A") then
  return mp.INFECTED
end
return mp.CLEAN
