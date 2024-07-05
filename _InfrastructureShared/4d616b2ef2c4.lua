if peattributes.no_security == true and mp.getfilesize() > 622592 and mp.getfilesize() < 655360 then
  return mp.INFECTED
end
return mp.CLEAN
