if mp.getfilesize() < 600000 then
  return mp.INFECTED
end
return mp.CLEAN
