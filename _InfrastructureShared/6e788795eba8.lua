if peattributes.no_security == true and mp.getfilesize() >= 2359296 and mp.getfilesize() <= 2555904 and pehdr.NumberOfSections >= 4 and pehdr.NumberOfSections <= 6 then
  return mp.INFECTED
end
return mp.CLEAN
