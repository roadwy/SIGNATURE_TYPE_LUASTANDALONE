if peattributes.ismsil == true and mp.getfilesize() < 5024000 then
  return mp.INFECTED
end
return mp.CLEAN
