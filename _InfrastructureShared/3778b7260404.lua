if peattributes.isexe == true and peattributes.no_security == true and mp.getfilesize() < 446548 then
  return mp.INFECTED
end
return mp.CLEAN