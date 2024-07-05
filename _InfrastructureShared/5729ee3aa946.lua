if mp.getfilesize() <= 2048 and mp.getfilesize() >= 400 then
  return mp.INFECTED
end
return mp.CLEAN
