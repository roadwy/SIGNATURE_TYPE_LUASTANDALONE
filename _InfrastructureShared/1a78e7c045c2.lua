if mp.getfilesize() >= 130560 and mp.getfilesize() <= 136192 then
  return mp.INFECTED
end
return mp.CLEAN
