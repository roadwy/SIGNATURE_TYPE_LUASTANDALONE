if mp.getfilesize() >= 5140 and mp.getfilesize() <= 10240 then
  return mp.INFECTED
end
return mp.CLEAN
