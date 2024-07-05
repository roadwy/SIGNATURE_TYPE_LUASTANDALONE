if peattributes.ismsil == true and mp.getfilesize() < 4048000 then
  return mp.INFECTED
end
return mp.CLEAN
