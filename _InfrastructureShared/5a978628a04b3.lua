if mp.getfilesize() < 3600000 then
  return mp.INFECTED
end
return mp.CLEAN
