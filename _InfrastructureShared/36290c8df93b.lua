if mp.getfilesize() < 1536 then
  return mp.INFECTED
end
return mp.CLEAN
