if peattributes.no_security == true and mp.getfilesize() < 50112 then
  return mp.INFECTED
end
return mp.CLEAN
