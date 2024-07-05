if mp.getfilesize() > 5000 then
  return mp.CLEAN
end
return mp.INFECTED
