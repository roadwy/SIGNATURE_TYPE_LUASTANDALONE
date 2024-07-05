if mp.getfilesize() > 100000 and mp.getfilesize() < 1200000 then
  return mp.INFECTED
end
return mp.CLEAN
