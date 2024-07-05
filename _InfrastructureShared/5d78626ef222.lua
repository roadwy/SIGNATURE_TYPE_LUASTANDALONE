if peattributes.isexe == true and mp.getfilesize() < 433245 then
  return mp.INFECTED
end
return mp.CLEAN
