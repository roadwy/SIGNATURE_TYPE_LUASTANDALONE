if peattributes.ismsil and mp.getfilesize() < 20480 then
  return mp.INFECTED
end
return mp.LOWFI
