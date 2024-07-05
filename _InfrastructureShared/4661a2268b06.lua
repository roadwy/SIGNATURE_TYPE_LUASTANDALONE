if peattributes.ismsil == true and mp.getfilesize() > 655360 and mp.getfilesize() < 786432 then
  return mp.INFECTED
end
return mp.CLEAN
