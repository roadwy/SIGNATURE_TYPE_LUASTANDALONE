if peattributes.no_security == true and mp.getfilesize() >= 151552 and mp.getfilesize() <= 155648 and pehdr.NumberOfSections >= 7 and pehdr.NumberOfSections <= 9 then
  return mp.INFECTED
end
return mp.CLEAN
