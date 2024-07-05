if mp.getfilesize() > 3500000 and mp.getfilesize() < 4500000 then
  return mp.INFECTED
end
return mp.CLEAN
