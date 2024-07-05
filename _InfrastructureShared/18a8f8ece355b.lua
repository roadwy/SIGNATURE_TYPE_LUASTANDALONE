if mp.getfilesize() > 155000 and mp.getfilesize() < 195000 then
  return mp.INFECTED
end
return mp.CLEAN
