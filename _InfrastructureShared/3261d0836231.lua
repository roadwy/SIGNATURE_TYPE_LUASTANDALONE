if pehdr.NumberOfSections == 6 and mp.getfilesize() >= 15000000 and mp.getfilesize() <= 22000000 then
  return mp.INFECTED
end
return mp.CLEAN
