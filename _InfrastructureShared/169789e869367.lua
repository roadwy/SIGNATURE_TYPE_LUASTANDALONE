if peattributes.no_security == true and mp.getfilesize() < 82000 then
  return mp.INFECTED
end
return mp.CLEAN
