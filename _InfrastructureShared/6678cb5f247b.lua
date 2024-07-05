if peattributes.ismsil and mp.getfilesize() <= 327680 then
  return mp.INFECTED
end
return mp.CLEAN
