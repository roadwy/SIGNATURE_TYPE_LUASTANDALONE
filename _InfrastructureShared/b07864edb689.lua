if mp.getfilesize() > 126976 and mp.getfilesize() < 196608 then
  return mp.INFECTED
end
return mp.CLEAN
