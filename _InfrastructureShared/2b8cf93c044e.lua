if mp.getfilesize() > 600000 or mp.getfilesize() < 10000 then
  return mp.CLEAN
end
return mp.INFECTED
