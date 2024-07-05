if peattributes.no_security == true and mp.getfilesize() >= 282624 and mp.getfilesize() <= 331776 then
  return mp.INFECTED
end
return mp.CLEAN
