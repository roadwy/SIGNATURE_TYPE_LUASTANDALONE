if mp.getfilesize() > 500000 and mp.getfilesize() < 1000000 then
  return mp.INFECTED
end
return mp.CLEAN
