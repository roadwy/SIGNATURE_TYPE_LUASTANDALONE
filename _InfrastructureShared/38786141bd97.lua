if peattributes.isexe == true and mp.getfilesize() < 110000 then
  return mp.INFECTED
end
return mp.CLEAN
