if peattributes.isexe == true and mp.getfilesize() < 3900000 then
  return mp.INFECTED
end
return mp.CLEAN
