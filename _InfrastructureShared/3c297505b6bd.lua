if mp.getfilesize() > 1000 and mp.getfilesize() < 30000 then
  return mp.INFECTED
end
return mp.CLEAN
