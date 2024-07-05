if peattributes.no_security == true and mp.getfilesize() >= 114688 and mp.getfilesize() <= 122880 and (pehdr.NumberOfSections >= 5 or pehdr.NumberOfSections <= 7) then
  return mp.INFECTED
end
return mp.CLEAN
