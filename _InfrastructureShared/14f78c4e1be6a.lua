if peattributes.ismsil and mp.getfilesize() >= 663552 and mp.getfilesize() <= 715008 then
  return mp.INFECTED
end
return mp.CLEAN
