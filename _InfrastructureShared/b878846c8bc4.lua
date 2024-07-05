if peattributes.isvbnative and mp.getfilesize() >= 512000 and mp.getfilesize() <= 716800 then
  return mp.INFECTED
end
return mp.CLEAN
