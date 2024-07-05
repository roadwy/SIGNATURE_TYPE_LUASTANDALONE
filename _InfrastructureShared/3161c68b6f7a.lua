if peattributes.no_security == true and mp.getfilesize() >= 102400 and mp.getfilesize() <= 143360 and pehdr.NumberOfSections == 5 then
  return mp.INFECTED
end
return mp.CLEAN
