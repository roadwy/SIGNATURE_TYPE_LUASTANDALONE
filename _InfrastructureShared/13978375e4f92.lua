if peattributes.no_security == true and mp.getfilesize() < 5200 then
  return mp.INFECTED
end
return mp.CLEAN
