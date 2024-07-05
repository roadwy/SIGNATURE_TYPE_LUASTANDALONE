if mp.getfilesize() >= 5120 and mp.getfilesize() <= 6144 then
  return mp.INFECTED
end
return mp.CLEAN
