if mp.getfilesize() < 130000 then
  return mp.INFECTED
end
return mp.CLEAN
