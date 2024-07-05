if peattributes.isexe == true and mp.getfilesize() < 151554 then
  return mp.INFECTED
end
return mp.CLEAN
