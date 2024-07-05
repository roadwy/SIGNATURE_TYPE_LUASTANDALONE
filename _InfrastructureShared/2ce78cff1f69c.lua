if mp.getfilesize() >= 500 and mp.getfilesize() <= 1500 then
  return mp.INFECTED
end
return mp.CLEAN
