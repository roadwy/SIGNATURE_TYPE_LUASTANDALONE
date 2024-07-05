if mp.getfilesize() >= 774000 and mp.getfilesize() <= 800000 and pehdr.NumberOfSections <= 9 and pesecs[2].Name == ".itext" then
  return mp.INFECTED
end
return mp.CLEAN
