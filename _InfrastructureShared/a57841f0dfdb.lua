if peattributes.no_security == true and mp.getfilesize() >= 458752 and mp.getfilesize() <= 1044480 and pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 9 then
  return mp.INFECTED
end
return mp.CLEAN
