if peattributes.no_security == true and mp.getfilesize() >= 264704 and mp.getfilesize() <= 277272 then
  return mp.INFECTED
end
return mp.CLEAN
