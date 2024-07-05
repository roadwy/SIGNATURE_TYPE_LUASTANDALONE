if peattributes.ismsil == true and mp.getfilesize() > 5376 and mp.getfilesize() < 6400 then
  return mp.INFECTED
end
return mp.CLEAN
