if mp.getfilesize() < 8400 then
  return mp.INFECTED
end
return mp.CLEAN
