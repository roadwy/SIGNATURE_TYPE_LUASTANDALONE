if peattributes.ismsil == true and mp.getfilesize() >= 80000 and mp.getfilesize() <= 90000 then
  return mp.INFECTED
end
return mp.CLEAN
