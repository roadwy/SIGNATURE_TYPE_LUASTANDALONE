if peattributes.isexe and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 9 and mp.getfilesize() >= 65536 and mp.getfilesize() <= 4194304 then
  return mp.INFECTED
end
return mp.CLEAN
