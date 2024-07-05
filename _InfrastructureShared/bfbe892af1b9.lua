if mp.getfilesize() < 5500 then
  return mp.INFECTED
end
return mp.CLEAN
