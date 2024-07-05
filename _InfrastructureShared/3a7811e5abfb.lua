if peattributes.isexe == true and mp.getfilesize() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN
