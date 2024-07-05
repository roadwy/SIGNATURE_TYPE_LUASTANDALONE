if mp.getfilesize() > 33554432 then
  return mp.CLEAN
end
return mp.INFECTED
