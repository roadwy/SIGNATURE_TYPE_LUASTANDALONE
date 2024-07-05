if pehdr.NumberOfSections == 6 and mp.getfilesize() >= 5868504 then
  return mp.INFECTED
end
return mp.CLEAN
