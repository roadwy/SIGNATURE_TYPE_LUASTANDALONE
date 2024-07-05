if mp.getfilesize() < 850000 then
  return mp.INFECTED
end
return mp.CLEAN
