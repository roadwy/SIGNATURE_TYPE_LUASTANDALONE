if mp.getfilesize() > 512000 then
  return mp.CLEAN
end
return mp.INFECTED
