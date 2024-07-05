if mp.getfilesize() < 1500000 and mp.getfilesize() > 50000 then
  return mp.INFECTED
end
return mp.CLEAN
