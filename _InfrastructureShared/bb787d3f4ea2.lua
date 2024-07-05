if peattributes.no_security and mp.getfilesize() > 210000 and mp.getfilesize() < 250000 and pehdr.NumberOfSections == 4 and pesecs[4].Name == ".crt1" then
  return mp.INFECTED
end
return mp.CLEAN
