if mp.getfilesize() < 6000 and mp.getfilesize() > 4000 then
  return mp.INFECTED
end
return mp.CLEAN
