if peattributes.no_security and mp.getfilesize() > 190000 and mp.getfilesize() < 230000 and pehdr.NumberOfSections == 4 and pesecs[4].Name == ".crt2" then
  return mp.INFECTED
end
return mp.CLEAN
