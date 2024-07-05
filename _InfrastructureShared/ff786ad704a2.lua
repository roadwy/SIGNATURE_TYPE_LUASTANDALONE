if mp.getfilesize() > 900000 and mp.getfilesize() < 1300000 then
  return mp.INFECTED
end
return mp.CLEAN
