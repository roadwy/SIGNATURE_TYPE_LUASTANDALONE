if mp.getfilesize() < 34600 then
  return mp.INFECTED
end
return mp.CLEAN
