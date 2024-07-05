if pehdr.NumberOfSections == 7 and mp.getfilesize() >= 5844992 then
  return mp.INFECTED
end
return mp.CLEAN
