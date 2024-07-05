if mp.getfilesize() >= 20480 then
  return mp.CLEAN
end
return mp.INFECTED
