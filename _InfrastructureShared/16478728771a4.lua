if mp.getfilesize() < 200000 and pehdr.NumberOfSections >= 7 and pesecs[5].Name == ".code" and pesecs[6].Name == ".crt" then
  return mp.INFECTED
end
return mp.CLEAN
