if peattributes.no_security == true and mp.getfilesize() >= 4096 and mp.getfilesize() <= 24576 then
  return mp.INFECTED
end
return mp.CLEAN
