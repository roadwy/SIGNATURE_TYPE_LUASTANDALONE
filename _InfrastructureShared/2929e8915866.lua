if mp.getfilesize() < 100 then
  return mp.INFECTED
end
return mp.CLEAN
