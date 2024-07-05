if mp.getfilesize() > 512000 and mp.getfilesize() < 1024000 then
  return mp.INFECTED
end
return mp.CLEAN
