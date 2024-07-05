if peattributes.isexe == true and mp.getfilesize() < 142000 then
  return mp.INFECTED
end
return mp.CLEAN
