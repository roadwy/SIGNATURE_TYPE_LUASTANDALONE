if peattributes.no_security == true and (mp.getfilesize() > 1000000 and mp.getfilesize() < 2000000 or mp.getfilesize() > 200000 and mp.getfilesize() < 500000) then
  return mp.INFECTED
end
return mp.CLEAN
