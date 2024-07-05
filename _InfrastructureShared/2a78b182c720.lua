if peattributes.no_security == true and mp.getfilesize() >= 114688 and mp.getfilesize() <= 124160 and pehdr.NumberOfSections == 5 and pesecs[4].Name == ".zdata" then
  return mp.INFECTED
end
return mp.CLEAN
