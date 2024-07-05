if peattributes.ismsil and mp.getfilesize() > 2000 and mp.getfilesize() < 6000 then
  return mp.INFECTED
end
return mp.LOWFI
