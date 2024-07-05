if peattributes.no_security == true and mp.getfilesize() > 3000000 and mp.getfilesize() < 5000000 then
  return mp.INFECTED
end
return mp.CLEAN
