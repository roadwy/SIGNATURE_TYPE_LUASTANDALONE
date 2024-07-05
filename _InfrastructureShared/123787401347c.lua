if mp.getfilesize() > 60000 then
  return mp.INFECTED
end
return mp.CLEAN
