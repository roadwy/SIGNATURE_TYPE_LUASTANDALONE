if peattributes.no_security == true and (mp.getfilesize() >= 53248 and mp.getfilesize() <= 61440 or mp.getfilesize() >= 315392 and mp.getfilesize() <= 327680) and (pehdr.NumberOfSections >= 2 or pehdr.NumberOfSections <= 4) then
  return mp.INFECTED
end
return mp.CLEAN
