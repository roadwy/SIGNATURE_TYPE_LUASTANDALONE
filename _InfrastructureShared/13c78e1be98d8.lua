if peattributes.isexe == true and mp.getfilesize() > 60000000 then
  return mp.INFECTED
end
return mp.CLEAN
