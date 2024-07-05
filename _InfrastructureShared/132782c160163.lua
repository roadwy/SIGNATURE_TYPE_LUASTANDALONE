if mp.getfilesize() < 550912 then
  return mp.INFECTED
end
return mp.CLEAN
