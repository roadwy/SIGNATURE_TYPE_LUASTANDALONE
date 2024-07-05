if mp.getfilesize() < 2500 then
  return mp.INFECTED
end
return mp.CLEAN
