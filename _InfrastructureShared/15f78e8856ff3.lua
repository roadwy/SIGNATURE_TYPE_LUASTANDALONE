if mp.getfilesize() < 4140000 then
  return mp.INFECTED
end
return mp.CLEAN
