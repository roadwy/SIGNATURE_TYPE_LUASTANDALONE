if mp.getfilesize() <= 20480 then
  return mp.INFECTED
end
return mp.CLEAN
