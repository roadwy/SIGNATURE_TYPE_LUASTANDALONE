if mp.getfilesize() > 184000 and mp.getfilesize() < 185000 then
  return mp.INFECTED
end
return mp.CLEAN
