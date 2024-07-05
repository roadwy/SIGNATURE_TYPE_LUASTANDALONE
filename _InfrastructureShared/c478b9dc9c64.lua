if peattributes.ismsil == true and mp.get_mpattribute("pea_headerchecksum0") and mp.get_mpattribute("LUA:FileSizeGT1M.A") then
  return mp.INFECTED
end
return mp.CLEAN
