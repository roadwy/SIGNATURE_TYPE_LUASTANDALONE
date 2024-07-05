if peattributes.isexe and mp.getfilesize() >= 589824 and mp.getfilesize() <= 917504 and pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 9 then
  return mp.INFECTED
end
return mp.CLEAN
