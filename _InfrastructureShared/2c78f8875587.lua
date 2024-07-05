if peattributes.isvbnative == true and mp.getfilesize() < 524000 then
  return mp.INFECTED
end
return mp.CLEAN
