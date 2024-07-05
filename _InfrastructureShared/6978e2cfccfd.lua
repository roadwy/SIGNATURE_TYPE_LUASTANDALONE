if mp.getfilesize() < 1300000 then
  return mp.INFECTED
end
return mp.CLEAN
