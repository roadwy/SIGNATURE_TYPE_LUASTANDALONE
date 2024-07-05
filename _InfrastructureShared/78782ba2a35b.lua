if mp.getfilesize() >= 1703936 and mp.getfilesize() <= 1769472 and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 5 then
  return mp.INFECTED
end
return mp.CLEAN
