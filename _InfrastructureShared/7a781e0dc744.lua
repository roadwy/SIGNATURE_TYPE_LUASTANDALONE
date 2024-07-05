if peattributes.ismsil == true and mp.getfilesize() < 5600000 then
  return mp.INFECTED
end
return mp.CLEAN
