if peattributes.ismsil == true and mp.getfilesize() > 300000000 then
  return mp.INFECTED
end
return mp.CLEAN
