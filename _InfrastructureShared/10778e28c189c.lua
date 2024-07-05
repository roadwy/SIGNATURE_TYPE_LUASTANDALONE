if peattributes.isexe == true and mp.getfilesize() < 280576 then
  return mp.INFECTED
end
return mp.CLEAN
