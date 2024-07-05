if pehdr.NumberOfSections == 9 and mp.getfilesize() >= 32768 and mp.getfilesize() <= 49152 then
  return mp.INFECTED
end
return mp.CLEAN
