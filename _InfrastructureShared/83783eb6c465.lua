if peattributes.no_security == true and mp.getfilesize() >= 147456 and mp.getfilesize() <= 155648 and pehdr.NumberOfSections == 4 then
  return mp.INFECTED
end
return mp.CLEAN
