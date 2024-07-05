if peattributes.ismsil == true and mp.getfilesize() >= 614400 and mp.getfilesize() <= 1536000 then
  return mp.INFECTED
end
return mp.CLEAN
