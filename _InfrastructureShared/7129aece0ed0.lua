if mp.getfilesize() < 3000 then
  return mp.INFECTED
end
return mp.CLEAN
