if mp.getfilesize() >= 210000 and mp.getfilesize() <= 240000 and pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 7 then
  return mp.INFECTED
end
return mp.CLEAN
