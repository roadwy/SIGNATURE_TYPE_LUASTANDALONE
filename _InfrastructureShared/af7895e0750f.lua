if peattributes.no_security == true and mp.getfilesize() >= 245760 and mp.getfilesize() <= 311296 then
  return mp.INFECTED
end
return mp.CLEAN
