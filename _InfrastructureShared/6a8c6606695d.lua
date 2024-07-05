if mp.getfilesize() < 25000 then
  return mp.INFECTED
end
return mp.CLEAN
