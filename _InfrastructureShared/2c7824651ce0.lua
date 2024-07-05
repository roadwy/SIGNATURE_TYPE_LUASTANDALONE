if peattributes.isexe == true and mp.getfilesize() < 95000 then
  return mp.INFECTED
end
return mp.CLEAN
