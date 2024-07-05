if peattributes.isexe == true and (mp.getfilesize() > 200000 or mp.getfilesize() < 300000) then
  return mp.INFECTED
end
return mp.CLEAN
