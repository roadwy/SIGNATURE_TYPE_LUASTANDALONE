if peattributes.isexe and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 7 and mp.getfilesize() >= 65536 and mp.getfilesize() <= 2097152 then
  return mp.INFECTED
end
return mp.CLEAN
