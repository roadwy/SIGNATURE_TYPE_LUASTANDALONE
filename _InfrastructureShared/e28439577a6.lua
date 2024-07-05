if mp.getfilesize() < 80000 then
  return mp.INFECTED
end
return mp.CLEAN
