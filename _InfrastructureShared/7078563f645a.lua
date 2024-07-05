if mp.getfilesize() >= 40000 and mp.getfilesize() <= 50000 then
  return mp.INFECTED
end
return mp.CLEAN
