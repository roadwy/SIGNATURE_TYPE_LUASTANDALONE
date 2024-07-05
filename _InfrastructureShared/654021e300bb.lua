if peattributes.isexe and mp.getfilesize() > 1048576 then
  return mp.INFECTED
end
return mp.CLEAN
