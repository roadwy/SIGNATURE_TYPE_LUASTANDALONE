if peattributes.isexe == true and peattributes.no_security == true and mp.getfilesize() < 37000 then
  return mp.INFECTED
end
return mp.CLEAN
