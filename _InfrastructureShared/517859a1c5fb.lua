if mp.getfilesize() <= 196608 then
  return mp.INFECTED
end
return mp.CLEAN
