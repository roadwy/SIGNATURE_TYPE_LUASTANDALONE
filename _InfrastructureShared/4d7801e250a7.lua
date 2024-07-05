if peattributes.no_security == true and mp.getfilesize() >= 307200 and mp.getfilesize() <= 512000 then
  return mp.INFECTED
end
return mp.CLEAN
