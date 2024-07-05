if peattributes.no_security == true and mp.getfilesize() >= 106496 and mp.getfilesize() <= 110592 and (pehdr.NumberOfSections >= 4 or pehdr.NumberOfSections <= 6) then
  return mp.INFECTED
end
return mp.CLEAN
