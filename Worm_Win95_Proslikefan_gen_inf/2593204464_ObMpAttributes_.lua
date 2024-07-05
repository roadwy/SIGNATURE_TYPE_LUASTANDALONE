if mp.getfilesize() > 2700 and mp.getfilesize() < 4400 then
  return mp.INFECTED
end
return mp.CLEAN
