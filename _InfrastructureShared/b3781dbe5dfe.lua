if peattributes.no_security == true and mp.getfilesize() < 44546 then
  return mp.INFECTED
end
return mp.CLEAN
