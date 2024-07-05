if peattributes.no_security == true and mp.getfilesize() <= 49152 and mp.getfilesize() >= 36864 then
  return mp.INFECTED
end
return mp.CLEAN
