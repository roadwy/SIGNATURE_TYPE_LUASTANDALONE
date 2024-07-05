if peattributes.isexe == true and (mp.getfilesize() > 2304 or mp.getfilesize() < 4096) then
  return mp.INFECTED
end
return mp.CLEAN
