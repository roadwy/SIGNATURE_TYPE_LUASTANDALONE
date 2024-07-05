if mp.getfilesize() > 300000 then
  return mp.CLEAN
end
return mp.INFECTED
