if mp.getfilesize() > 50000 and mp.getfilesize() < 250000 then
  return mp.INFECTED
end
return mp.CLEAN
