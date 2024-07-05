if peattributes.no_security == true and pehdr.NumberOfSections == 5 and mp.getfilesize() >= 1785856 and mp.getfilesize() <= 1802240 then
  return mp.INFECTED
end
return mp.CLEAN
