if peattributes.ismsil and mp.getfilesize() > 3145728 then
  return mp.INFECTED
end
return mp.CLEAN
