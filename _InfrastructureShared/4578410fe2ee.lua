if mp.getfilesize() > 120000 and mp.getfilesize() < 140000 then
  return mp.INFECTED
end
return mp.CLEAN
