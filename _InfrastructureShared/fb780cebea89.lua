if peattributes.isexe == true and mp.getfilesize() < 960000 then
  return mp.INFECTED
end
return mp.CLEAN
