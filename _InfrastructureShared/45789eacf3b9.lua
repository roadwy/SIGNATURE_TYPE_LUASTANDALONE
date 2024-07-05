if mp.getfilesize() > 2000000 or mp.getfilesize() < 4000 then
  return mp.CLEAN
end
return mp.INFECTED
