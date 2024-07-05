if peattributes.ismsil == true and mp.getfilesize() <= 1572864 then
  return mp.INFECTED
end
return mp.CLEAN
