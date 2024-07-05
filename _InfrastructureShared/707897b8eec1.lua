if peattributes.no_security == true and mp.getfilesize() <= 524288 and mp.getfilesize() >= 327680 then
  return mp.INFECTED
end
return mp.CLEAN
