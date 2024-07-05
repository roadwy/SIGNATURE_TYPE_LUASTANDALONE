if peattributes.no_security == true and mp.getfilesize() < 35000 then
  return mp.INFECTED
end
return mp.CLEAN
