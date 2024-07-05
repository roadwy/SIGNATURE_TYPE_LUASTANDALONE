if peattributes.isvbnative and mp.getfilesize() >= 327680 and mp.getfilesize() <= 524288 then
  return mp.INFECTED
end
return mp.CLEAN
