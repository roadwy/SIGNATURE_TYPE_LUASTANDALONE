if peattributes.no_security == true and mp.getfilesize() < 9218 then
  return mp.INFECTED
end
return mp.CLEAN
