if peattributes.ismsil == true and mp.getfilesize() < 350000 then
  return mp.INFECTED
end
return mp.CLEAN
