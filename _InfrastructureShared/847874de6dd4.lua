if peattributes.no_security == true and mp.getfilesize() < 151558 then
  return mp.INFECTED
end
return mp.CLEAN
