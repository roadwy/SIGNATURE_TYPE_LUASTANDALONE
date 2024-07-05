if mp.getfilesize() < 50000 or mp.getfilesize() > 300000 and mp.getfilesize() < 600000 then
  return mp.INFECTED
end
return mp.CLEAN
