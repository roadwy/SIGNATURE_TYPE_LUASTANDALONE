if mp.getfilesize() > 10485760 then
  return mp.CLEAN
end
return mp.INFECTED
