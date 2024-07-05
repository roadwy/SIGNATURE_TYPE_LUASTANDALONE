if mp.getfilesize() < 920000 then
  return mp.INFECTED
end
return mp.CLEAN
