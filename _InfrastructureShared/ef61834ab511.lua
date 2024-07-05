if peattributes.no_security == true and mp.getfilesize() < 5376 and mp.getfilesize() > 4096 then
  return mp.INFECTED
end
return mp.CLEAN
