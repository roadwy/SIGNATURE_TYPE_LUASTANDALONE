if peattributes.no_security == true and mp.getfilesize() >= 393216 and mp.getfilesize() <= 524288 and (pehdr.NumberOfSections >= 3 or pehdr.NumberOfSections <= 5) then
  return mp.INFECTED
end
return mp.CLEAN
