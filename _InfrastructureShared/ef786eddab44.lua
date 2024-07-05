if peattributes.no_security == true and mp.getfilesize() < 9900000 then
  return mp.INFECTED
end
return mp.CLEAN
