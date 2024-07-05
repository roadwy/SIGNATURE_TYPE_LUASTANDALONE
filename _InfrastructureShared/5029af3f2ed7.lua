if mp.getfilesize() <= 10240 and mp.getfilesize() > 7168 then
  return mp.INFECTED
end
return mp.CLEAN
