if peattributes.ismsil == true and mp.getfilesize() > 90112 and mp.getfilesize() < 524288 then
  return mp.INFECTED
end
return mp.CLEAN
