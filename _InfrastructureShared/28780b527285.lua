if mp.getfilesize() >= 140000 and mp.getfilesize() <= 146000 and pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 7 then
  return mp.INFECTED
end
return mp.CLEAN
