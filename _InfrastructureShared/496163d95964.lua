if peattributes.ismsil == true and mp.getfilesize() < 983040 then
  return mp.INFECTED
end
return mp.CLEAN
