if mp.getfilesize() < 2048000 and mp.get_mpattribute("pea_headerchecksum0") and pehdr.NumberOfSections == 3 and mp.get_mpattribute("Lua:OverSizedLnkFile") then
  return mp.INFECTED
end
return mp.CLEAN
