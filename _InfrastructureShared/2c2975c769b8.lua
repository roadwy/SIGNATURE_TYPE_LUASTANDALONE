if mp.getfilesize() <= 1024 then
  return mp.INFECTED
end
return mp.CLEAN
