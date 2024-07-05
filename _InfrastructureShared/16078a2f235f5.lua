if mp.getfilesize() < 2560000 and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN
