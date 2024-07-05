if peattributes.no_security == true and mp.getfilesize() > 319000 and mp.getfilesize() < 319999 then
  return mp.INFECTED
end
return mp.CLEAN
