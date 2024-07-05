if mp.getfilesize() > 135000 and mp.getfilesize() < 150000 and pehdr.NumberOfSections >= 6 and pesecs[3].Name == ".zfq" and pesecs[4].Name == ".flq" then
  return mp.INFECTED
end
return mp.CLEAN
