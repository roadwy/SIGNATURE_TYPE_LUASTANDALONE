if peattributes.ismsil == true and mp.getfilesize() < 20000 then
  return mp.INFECTED
end
return mp.CLEAN
