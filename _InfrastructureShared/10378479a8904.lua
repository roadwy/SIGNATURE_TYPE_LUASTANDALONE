if mp.getfilesize() < 10485760 then
  return mp.INFECTED
end
return mp.CLEAN
