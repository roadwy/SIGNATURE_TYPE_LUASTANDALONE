if mp.getfilesize() < 3500 then
  return mp.INFECTED
end
return mp.CLEAN
