if peattributes.isexe == true and mp.getfilesize() <= 714320 and mp.getfilesize() >= 645960 then
  return mp.INFECTED
end
return mp.CLEAN
