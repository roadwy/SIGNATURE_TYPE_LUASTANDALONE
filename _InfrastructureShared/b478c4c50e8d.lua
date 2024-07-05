if peattributes.ismsil == true and mp.getfilesize() > 53248 and mp.getfilesize() < 65536 then
  return mp.INFECTED
end
return mp.CLEAN
