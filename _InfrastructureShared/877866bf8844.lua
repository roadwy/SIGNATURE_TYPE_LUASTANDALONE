if peattributes.isexe == true and mp.getfilesize() == 32768 then
  return mp.INFECTED
end
return mp.CLEAN
