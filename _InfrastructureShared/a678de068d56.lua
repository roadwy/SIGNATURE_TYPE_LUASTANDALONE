if peattributes.ismsil == true and mp.getfilesize() < 3072000 then
  return mp.INFECTED
end
return mp.CLEAN
