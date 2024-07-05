if peattributes.ismsil and mp.getfilesize() < 50000 then
  return mp.INFECTED
end
return mp.CLEAN
