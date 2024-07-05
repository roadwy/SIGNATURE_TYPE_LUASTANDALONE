if peattributes.no_security == true and mp.getfilesize() <= 1101824 and mp.getfilesize() >= 1081344 then
  return mp.INFECTED
end
return mp.CLEAN
