if mp.getfilesize() < 3100000 then
  return mp.INFECTED
end
return mp.CLEAN
