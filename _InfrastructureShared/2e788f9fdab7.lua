if peattributes.no_security == true and mp.getfilesize() >= 299008 and mp.getfilesize() <= 350208 then
  return mp.INFECTED
end
return mp.CLEAN
