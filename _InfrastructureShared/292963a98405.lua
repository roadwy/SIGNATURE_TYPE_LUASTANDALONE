if mp.getfilesize() < 1500 then
  return mp.INFECTED
end
return mp.CLEAN
