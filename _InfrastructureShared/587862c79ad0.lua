if mp.getfilesize() >= 12000 and mp.getfilesize() <= 17096 and mp.get_mpattribute("pea_no_security") and peattributes.isexe == true then
  return mp.INFECTED
end
return mp.CLEAN
