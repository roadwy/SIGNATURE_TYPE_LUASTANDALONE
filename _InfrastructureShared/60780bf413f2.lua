if peattributes.isexe == true and mp.getfilesize() <= 30000 and mp.getfilesize() >= 23000 then
  return mp.INFECTED
end
return mp.CLEAN
