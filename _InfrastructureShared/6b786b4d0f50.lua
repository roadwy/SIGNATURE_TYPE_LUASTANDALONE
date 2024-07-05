if peattributes.no_security == true and mp.getfilesize() < 800000 then
  return mp.INFECTED
end
return mp.CLEAN
