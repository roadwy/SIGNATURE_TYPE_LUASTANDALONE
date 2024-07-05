if mp.getfilesize() < 1400000 then
  return mp.INFECTED
end
return mp.CLEAN
