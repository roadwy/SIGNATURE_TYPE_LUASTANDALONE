if mp.getfilesize() > 20000 and mp.getfilesize() < 31000 then
  return mp.INFECTED
end
return mp.CLEAN
