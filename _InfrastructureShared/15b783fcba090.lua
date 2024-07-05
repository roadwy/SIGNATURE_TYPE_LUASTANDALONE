if mp.getfilesize() >= 20480 and mp.getfilesize() <= 32768 then
  return mp.INFECTED
end
return mp.CLEAN
