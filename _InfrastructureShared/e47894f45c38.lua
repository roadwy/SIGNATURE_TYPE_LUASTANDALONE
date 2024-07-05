if peattributes.no_security == true and mp.getfilesize() >= 732160 and mp.getfilesize() <= 734720 then
  return mp.INFECTED
end
return mp.CLEAN
