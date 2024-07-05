if peattributes.no_security == true and mp.getfilesize() >= 1089536 and mp.getfilesize() <= 1212416 then
  return mp.INFECTED
end
return mp.CLEAN
