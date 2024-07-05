if peattributes.ismsil == true and mp.getfilesize() < 700000 then
  return mp.INFECTED
end
return mp.CLEAN
