if peattributes.isvbnative and mp.getfilesize() >= 765952 and mp.getfilesize() <= 872448 then
  return mp.INFECTED
end
return mp.CLEAN
