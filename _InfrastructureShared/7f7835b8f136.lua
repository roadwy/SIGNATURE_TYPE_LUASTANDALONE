if mp.getfilesize() >= 1000000 and mp.getfilesize() < 3000000 then
  return mp.INFECTED
end
return mp.CLEAN
