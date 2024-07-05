if peattributes.isvbnative == true and mp.getfilesize() >= 102400 and mp.getfilesize() <= 1536000 and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN
