if mp.getfilesize() >= 200704 and mp.getfilesize() <= 204800 then
  return mp.INFECTED
end
return mp.CLEAN
