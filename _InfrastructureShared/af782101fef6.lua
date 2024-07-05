if mp.getfilesize() <= 600000 and mp.getfilesize() >= 500000 then
  return mp.INFECTED
end
return mp.CLEAN
