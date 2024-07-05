if pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 5 and mp.getfilesize() >= 9472 and mp.getfilesize() <= 20480 then
  return mp.INFECTED
end
return mp.CLEAN
