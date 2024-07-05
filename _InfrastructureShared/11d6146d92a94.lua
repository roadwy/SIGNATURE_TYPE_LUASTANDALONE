if peattributes.ismsil == true and mp.getfilesize() > 5376 and mp.getfilesize() < 12288 then
  return mp.INFECTED
end
return mp.CLEAN
