if peattributes.isvbnative == true and pehdr.NumberOfSections == 3 and mp.getfilesize() == 86016 then
  return mp.INFECTED
end
return mp.CLEAN
