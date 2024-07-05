if mp.getfilesize() < 10000 then
  return mp.INFECTED
end
return mp.CLEAN
