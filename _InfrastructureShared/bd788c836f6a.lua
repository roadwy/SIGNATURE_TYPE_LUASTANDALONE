if mp.get_mpattribute("pea_isexe") and mp.getfilesize() < 2048000 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
