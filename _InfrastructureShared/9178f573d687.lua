if peattributes.ismsil == true and mp.getfilesize() < 153600 then
  return mp.INFECTED
end
return mp.CLEAN
