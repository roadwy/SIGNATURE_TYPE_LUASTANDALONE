if mp.getfilesize() > 400000 and mp.getfilesize() < 999000 then
  return mp.INFECTED
end
return mp.CLEAN
