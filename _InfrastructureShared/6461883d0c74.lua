if peattributes.isexe and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 6 and mp.getfilesize() >= 65536 and mp.getfilesize() <= 1114112 then
  return mp.INFECTED
end
return mp.CLEAN
