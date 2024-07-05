if mp.getfilesize() <= 2048 then
  return mp.INFECTED
end
return mp.CLEAN
