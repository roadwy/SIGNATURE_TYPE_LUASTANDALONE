if peattributes.no_security and mp.getfilesize() >= 32768 and mp.getfilesize() <= 34048 then
  return mp.INFECTED
end
return mp.CLEAN
