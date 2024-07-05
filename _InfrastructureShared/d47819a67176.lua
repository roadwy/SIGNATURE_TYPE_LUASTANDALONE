if mp.getfilesize() < 50000 or mp.getfilesize() > 150000 and mp.getfilesize() < 400000 then
  return mp.INFECTED
end
return mp.CLEAN
