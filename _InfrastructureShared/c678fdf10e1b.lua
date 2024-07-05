if peattributes.no_security == true and mp.getfilesize() >= 196608 and mp.getfilesize() <= 217088 and (pehdr.NumberOfSections >= 5 or pehdr.NumberOfSections <= 7) then
  return mp.INFECTED
end
return mp.CLEAN
