if peattributes.isexe == true and mp.getfilesize() < 250000 then
  return mp.INFECTED
end
return mp.CLEAN
