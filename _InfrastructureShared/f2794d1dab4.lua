if mp.getfilesize() > 900 and mp.getfilesize() < 1048576 then
  return mp.INFECTED
end
return mp.CLEAN
