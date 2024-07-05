if peattributes.no_security == false and mp.getfilesize() >= 135168 and mp.getfilesize() <= 163840 then
  return mp.INFECTED
end
return mp.CLEAN
