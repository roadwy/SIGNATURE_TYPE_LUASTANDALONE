if peattributes.no_security == true and (mp.getfilesize() > 2000000 and mp.getfilesize() < 5500000 or mp.getfilesize() > 8000000 and mp.getfilesize() < 11000000) then
  return mp.INFECTED
end
return mp.CLEAN
