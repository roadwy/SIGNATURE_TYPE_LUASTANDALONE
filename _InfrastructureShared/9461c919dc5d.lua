if peattributes.no_security == true and mp.getfilesize() >= 1507328 and mp.getfilesize() <= 1769472 then
  return mp.INFECTED
end
return mp.CLEAN
