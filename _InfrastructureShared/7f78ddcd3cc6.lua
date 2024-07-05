if peattributes.no_security == true and mp.getfilesize() >= 36864 and mp.getfilesize() <= 40960 and (pehdr.NumberOfSections >= 4 or pehdr.NumberOfSections <= 6) then
  return mp.INFECTED
end
return mp.CLEAN
