if mp.getfilesize() >= 888800 and mp.getfilesize() <= 888850 and pehdr.NumberOfSections == 4 then
  return mp.INFECTED
end
return mp.CLEAN
