if pehdr.NumberOfSections == 3 and mp.getfilesize() < 1064000 then
  return mp.INFECTED
end
return mp.CLEAN
