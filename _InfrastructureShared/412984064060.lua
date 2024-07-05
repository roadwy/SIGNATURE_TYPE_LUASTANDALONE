if mp.getfilesize() < 2000 then
  return mp.INFECTED
end
return mp.CLEAN
