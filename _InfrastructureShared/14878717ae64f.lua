if peattributes.ismsil == true and mp.get_mpattribute("pea_isexe") and mp.getfilesize() < 1024000 and pehdr.NumberOfSections == 3 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
