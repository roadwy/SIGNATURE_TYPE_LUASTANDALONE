if mp.getfilesize() <= 100000 then
  return mp.INFECTED
end
return mp.CLEAN
