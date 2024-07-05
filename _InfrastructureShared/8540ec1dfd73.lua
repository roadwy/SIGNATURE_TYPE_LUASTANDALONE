if mp.getfilesize() >= 983040 and mp.getfilesize() <= 1179648 and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN
