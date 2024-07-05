if peattributes.ismsil and mp.getfilesize() < 16384 and mp.getfilesize() > 2000 then
  return mp.INFECTED
end
return mp.CLEAN
