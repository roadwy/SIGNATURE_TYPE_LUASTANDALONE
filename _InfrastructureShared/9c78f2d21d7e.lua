if mp.getfilesize() < 50000 then
  return mp.CLEAN
end
return mp.INFECTED
