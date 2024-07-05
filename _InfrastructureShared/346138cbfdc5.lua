if peattributes.no_security == true and pehdr.NumberOfSections == 5 and mp.getfilesize() >= 2138112 and mp.getfilesize() <= 2281472 then
  return mp.INFECTED
end
return mp.CLEAN
