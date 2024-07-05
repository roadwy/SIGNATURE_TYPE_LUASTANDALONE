if mp.getfilesize() < 2097152 and mp.getfilesize() > 1769472 then
  return mp.INFECTED
end
return mp.CLEAN
