if pehdr.NumberOfSections <= 5 and mp.getfilesize() < 2048000 then
  return mp.INFECTED
end
return mp.CLEAN
