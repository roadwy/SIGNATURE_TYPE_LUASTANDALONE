if mp.getfilesize() > 1024000 and mp.getfilesize() < 3072000 then
  return mp.INFECTED
end
return mp.CLEAN
