if peattributes.no_security == true and mp.getfilesize() >= 32768 and mp.getfilesize() <= 655360 then
  return mp.INFECTED
end
return mp.CLEAN
