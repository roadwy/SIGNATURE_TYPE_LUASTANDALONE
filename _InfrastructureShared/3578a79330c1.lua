if mp.getfilesize() >= 4096 and mp.getfilesize() <= 16384 then
  return mp.INFECTED
end
return mp.CLEAN
