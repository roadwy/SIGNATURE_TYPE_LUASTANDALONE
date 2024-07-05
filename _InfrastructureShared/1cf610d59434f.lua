if peattributes.no_security == true and mp.getfilesize() >= 393216 and mp.getfilesize() <= 5111808 then
  return mp.INFECTED
end
return mp.CLEAN
