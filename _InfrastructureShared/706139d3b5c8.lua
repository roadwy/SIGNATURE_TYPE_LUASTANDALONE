if peattributes.isdll and pehdr.NumberOfSections == 5 and mp.getfilesize() >= 65536 and mp.getfilesize() <= 1048576 then
  return mp.INFECTED
end
return mp.CLEAN
