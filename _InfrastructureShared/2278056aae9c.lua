if peattributes.no_security == true and mp.getfilesize() >= 770048 and mp.getfilesize() <= 1138688 and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 5 then
  return mp.INFECTED
end
return mp.CLEAN
