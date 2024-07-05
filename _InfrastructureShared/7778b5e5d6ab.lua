if peattributes.ismsil == true and mp.getfilesize() < 5000 then
  return mp.INFECTED
end
return mp.CLEAN
