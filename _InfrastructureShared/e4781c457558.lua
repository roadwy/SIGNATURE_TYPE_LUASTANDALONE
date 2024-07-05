if peattributes.no_security == true and mp.getfilesize() >= 491520 and mp.getfilesize() <= 536576 then
  return mp.INFECTED
end
return mp.CLEAN
