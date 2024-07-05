if mp.getfilesize() >= 75008 and mp.getfilesize() <= 208640 then
  return mp.INFECTED
end
return mp.CLEAN
