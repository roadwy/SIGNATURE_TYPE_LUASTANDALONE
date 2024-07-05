if mp.getfilesize() >= 9728 and mp.getfilesize() <= 13312 then
  return mp.INFECTED
end
return mp.CLEAN
