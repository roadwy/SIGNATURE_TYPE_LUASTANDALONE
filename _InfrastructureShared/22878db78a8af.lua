if mp.getfilesize() < 2560000 and pehdr.NumberOfSections == 5 and pesecs[5].Name == "" then
  return mp.INFECTED
end
return mp.CLEAN
