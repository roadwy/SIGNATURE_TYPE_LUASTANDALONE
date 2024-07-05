if mp.getfilesize() % 4096 == 0 and mp.getfilesize() >= 143360 and mp.getfilesize() <= 155648 then
  return mp.INFECTED
end
return mp.CLEAN
