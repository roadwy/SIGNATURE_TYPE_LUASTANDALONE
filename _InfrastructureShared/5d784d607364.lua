if mp.getfilesize() < 15360 then
  return mp.INFECTED
end
return mp.CLEAN
