if peattributes.no_security == true and mp.getfilesize() >= 77824 and mp.getfilesize() <= 86016 and (pehdr.NumberOfSections >= 5 or pehdr.NumberOfSections <= 7) then
  return mp.INFECTED
end
return mp.CLEAN
