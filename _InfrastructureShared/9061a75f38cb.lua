if mp.getfilesize() >= 386048 and mp.getfilesize() <= 576000 and pehdr.NumberOfSections == 5 then
  return mp.INFECTED
end
return mp.CLEAN
