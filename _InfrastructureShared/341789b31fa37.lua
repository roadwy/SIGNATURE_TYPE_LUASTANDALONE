if (mp.getfilesize() < 2048000 or mp.getfilesize() >= 39845887 and mp.getfilesize() <= 40000000) and pehdr.NumberOfSections == 3 then
  return mp.INFECTED
end
return mp.CLEAN
