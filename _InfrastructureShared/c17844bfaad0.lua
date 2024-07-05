if peattributes.ismsil and mp.getfilesize() < 500000 then
  return mp.INFECTED
end
return mp.CLEAN
