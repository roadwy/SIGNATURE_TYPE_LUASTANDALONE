if pehdr.NumberOfSections == 3 and mp.get_mpattribute("Lua:OverSizedLnkFile") and mp.getfilesize() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN
