if peattributes.no_security == true and mp.getfilesize() >= 114688 and mp.getfilesize() <= 159744 and pehdr.NumberOfSections == 6 then
  return mp.INFECTED
end
return mp.CLEAN
