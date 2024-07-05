if mp.getfilesize() > 40000 or mp.getfilesize() < 1000 then
  return mp.CLEAN
end
return mp.INFECTED
