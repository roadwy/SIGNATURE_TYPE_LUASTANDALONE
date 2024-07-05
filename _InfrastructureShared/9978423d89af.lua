if peattributes.ismsil == true and mp.getfilesize() < 6700 then
  return mp.INFECTED
end
return mp.CLEAN
