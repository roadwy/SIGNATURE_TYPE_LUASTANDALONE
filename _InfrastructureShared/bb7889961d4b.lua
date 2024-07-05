if mp.getfilesize() < 5000000 then
  return mp.INFECTED
end
return mp.CLEAN
