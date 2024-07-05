if peattributes.isexe == true and mp.getfilesize() < 5198016 then
  return mp.INFECTED
end
return mp.CLEAN
