if mp.getfilesize() >= 108288 and mp.getfilesize() <= 122880 and (pehdr.NumberOfSections >= 4 or pehdr.NumberOfSections <= 6) then
  return mp.INFECTED
end
return mp.CLEAN
