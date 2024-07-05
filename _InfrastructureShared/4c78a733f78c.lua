if peattributes.no_security == true and mp.getfilesize() <= 983040 and mp.getfilesize() >= 786432 then
  return mp.INFECTED
end
return mp.CLEAN
