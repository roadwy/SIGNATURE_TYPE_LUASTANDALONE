if peattributes.no_security == true and peattributes.isexe == true and mp.getfilesize() > 1700000 and mp.getfilesize() < 4000000 then
  return mp.INFECTED
end
return mp.CLEAN
