if mp.getfilesize() < 1050000 and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN
