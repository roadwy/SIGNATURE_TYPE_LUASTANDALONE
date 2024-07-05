if peattributes.no_security == true and mp.getfilesize() >= 114688 and mp.getfilesize() <= 159744 and pehdr.NumberOfSections == 9 and pesecs[6].Name == "CONST" then
  return mp.INFECTED
end
return mp.CLEAN
