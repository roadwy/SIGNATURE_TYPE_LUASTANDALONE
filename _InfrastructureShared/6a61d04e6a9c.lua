if mp.getfilesize() <= 972800 and mp.getfilesize() >= 665600 then
  return mp.INFECTED
end
return mp.CLEAN
