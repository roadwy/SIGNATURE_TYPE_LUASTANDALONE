if mp.HSTR_WEIGHT == 3 and mp.get_mpattribute("pea_has_msilresources") and mp.get_mpattribute("pea_no_security") and mp.get_mpattribute("LUA:FileSizeLE40000.A") then
  return mp.INFECTED
end
return mp.LOWFI
