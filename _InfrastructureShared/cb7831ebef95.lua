if peattributes.no_security == true and mp.getfilesize() >= 149760 and mp.getfilesize() <= 190208 then
  return mp.INFECTED
end
return mp.CLEAN
