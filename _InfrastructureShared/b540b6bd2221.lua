if mp.getfilesize() < 1536000 then
  return mp.INFECTED
end
return mp.CLEAN
