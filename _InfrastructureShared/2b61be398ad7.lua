if peattributes.no_security == false and mp.getfilesize() < 196608 and mp.getfilesize() > 40960 then
  return mp.INFECTED
end
return mp.CLEAN
