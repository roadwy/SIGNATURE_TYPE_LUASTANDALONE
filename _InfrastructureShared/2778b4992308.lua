if peattributes.no_security == true and mp.getfilesize() < 150530 then
  return mp.INFECTED
end
return mp.CLEAN
