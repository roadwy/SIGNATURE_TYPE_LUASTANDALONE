if peattributes.isexe == true and peattributes.no_security == true and mp.getfilesize() < 81950 then
  return mp.INFECTED
end
return mp.CLEAN
