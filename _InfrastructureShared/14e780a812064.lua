if peattributes.ismsil and mp.getfilesize() <= 65536 then
  return mp.INFECTED
end
return mp.CLEAN
