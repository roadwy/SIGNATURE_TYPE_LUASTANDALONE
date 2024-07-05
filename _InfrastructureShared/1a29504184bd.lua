if mp.getfilesize() < 4096 then
  return mp.INFECTED
end
return mp.CLEAN
