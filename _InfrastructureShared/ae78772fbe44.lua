if peattributes.no_security == true and mp.getfilesize() >= 143360 and mp.getfilesize() <= 155648 then
  return mp.INFECTED
end
return mp.CLEAN
