if peattributes.no_security == true and mp.getfilesize() > 500000 and mp.getfilesize() < 2000000 then
  return mp.INFECTED
end
return mp.CLEAN
