if mp.getfilesize() < 2000 and mp.getfilesize() > 1000 then
  return mp.INFECTED
end
return mp.CLEAN
