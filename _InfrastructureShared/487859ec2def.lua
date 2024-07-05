if peattributes.isexe == true and mp.getfilesize() < 117000 then
  return mp.INFECTED
end
return mp.CLEAN
