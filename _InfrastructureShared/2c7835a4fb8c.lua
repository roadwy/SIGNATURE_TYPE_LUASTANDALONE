if peattributes.isexe == true and mp.getfilesize() > 7000 then
  return mp.INFECTED
end
return mp.CLEAN
