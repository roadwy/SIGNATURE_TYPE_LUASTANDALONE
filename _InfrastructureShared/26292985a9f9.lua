if mp.getfilesize() > 300 or mp.getfilesize() < 100 then
  return mp.CLEAN
end
return mp.INFECTED
