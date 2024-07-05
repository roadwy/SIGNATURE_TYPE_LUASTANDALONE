if peattributes.ismsil and mp.get_mpattribute("LUA:FileSizeLE5000.A") and mp.get_mpattribute("pea_no_security") then
  return mp.INFECTED
end
return mp.CLEAN
