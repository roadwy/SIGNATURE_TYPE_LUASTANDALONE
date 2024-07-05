if peattributes.no_security == true and mp.getfilesize() < 2500000 then
  return mp.INFECTED
end
return mp.CLEAN
