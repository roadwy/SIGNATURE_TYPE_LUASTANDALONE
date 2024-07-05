if peattributes.no_security == true and mp.getfilesize() >= 131072 and mp.getfilesize() <= 196608 then
  return mp.INFECTED
end
return mp.CLEAN
