if peattributes.ismsil == true and mp.getfilesize() < 15000 then
  return mp.INFECTED
end
return mp.CLEAN
