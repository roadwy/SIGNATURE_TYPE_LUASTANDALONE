if mp.getfilesize() < 1000000 then
  return mp.INFECTED
end
return mp.CLEAN
