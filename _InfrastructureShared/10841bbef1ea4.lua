if peattributes.isexe == true and mp.getfilesize() > 800000 and mp.getfilesize() < 900000 then
  return mp.INFECTED
end
return mp.CLEAN
