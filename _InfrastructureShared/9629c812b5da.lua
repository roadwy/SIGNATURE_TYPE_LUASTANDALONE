if mp.getfilesize() < 6000 then
  return mp.INFECTED
end
return mp.CLEAN
