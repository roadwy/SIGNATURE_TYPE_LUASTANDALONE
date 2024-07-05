if mp.getfilesize() < 16384 then
  return mp.INFECTED
end
return mp.CLEAN
