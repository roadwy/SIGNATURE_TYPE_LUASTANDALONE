if mp.getfilesize() > 750000 then
  return mp.CLEAN
end
return mp.INFECTED
