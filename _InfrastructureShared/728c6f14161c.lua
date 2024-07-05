if mp.getfilesize() >= 3145728 and mp.getfilesize() <= 20971520 then
  return mp.INFECTED
end
return mp.CLEAN
