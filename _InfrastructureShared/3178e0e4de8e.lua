if peattributes.no_security == true and mp.getfilesize() >= 204800 and mp.getfilesize() <= 212992 and (pehdr.NumberOfSections >= 4 or pehdr.NumberOfSections <= 5) then
  return mp.INFECTED
end
return mp.CLEAN
