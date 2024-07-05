if peattributes.ismsil == true and mp.getfilesize() < 655360 then
  return mp.INFECTED
end
return mp.CLEAN
