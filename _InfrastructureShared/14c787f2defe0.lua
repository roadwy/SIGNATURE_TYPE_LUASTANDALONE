if pehdr.NumberOfSections == 4 and mp.getfilesize() < 1048000 then
  return mp.INFECTED
end
return mp.CLEAN
