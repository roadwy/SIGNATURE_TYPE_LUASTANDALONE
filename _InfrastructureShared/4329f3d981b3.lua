if mp.getfilesize() <= 5120 then
  return mp.INFECTED
end
return mp.CLEAN
