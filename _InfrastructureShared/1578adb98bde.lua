if peattributes.no_security and mp.getfilesize() > 145000 and mp.getfilesize() < 179000 and pehdr.NumberOfSections == 4 and pesecs[3].Name == "CONST" and pesecs[3].SizeOfRawData <= 8192 and pesecs[3].SizeOfRawData >= 2048 then
  return mp.INFECTED
end
return mp.CLEAN
