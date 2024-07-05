if peattributes.isexe == true and mp.getfilesize() < 90000 then
  return mp.INFECTED
end
return mp.CLEAN
