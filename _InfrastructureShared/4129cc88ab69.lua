if mp.getfilesize() >= 512 and mp.getfilesize() <= 2048 then
  return mp.INFECTED
end
return mp.CLEAN
