if peattributes.no_security == true and mp.getfilesize() >= 720896 and mp.getfilesize() <= 851968 then
  return mp.INFECTED
end
return mp.CLEAN
