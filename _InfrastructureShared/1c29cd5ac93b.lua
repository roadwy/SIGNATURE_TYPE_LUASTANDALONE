if mp.getfilesize() <= 10240 and mp.getfilesize() >= 3072 then
  return mp.INFECTED
end
return mp.CLEAN
