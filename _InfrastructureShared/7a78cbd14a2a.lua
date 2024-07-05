if peattributes.no_security == true and mp.getfilesize() <= 360448 and mp.getfilesize() >= 356352 then
  return mp.INFECTED
end
return mp.CLEAN
