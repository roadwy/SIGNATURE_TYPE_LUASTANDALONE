if mp.getfilesize() < 11000 then
  return mp.INFECTED
end
return mp.CLEAN
