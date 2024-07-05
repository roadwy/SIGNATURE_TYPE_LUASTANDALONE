if peattributes.no_security == true and (mp.getfilesize() >= 315392 and mp.getfilesize() <= 327680 or mp.getfilesize() >= 405504 and mp.getfilesize() <= 466944) then
  return mp.INFECTED
end
return mp.CLEAN
