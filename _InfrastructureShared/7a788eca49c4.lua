if mp.getfilesize() <= 4000 then
  return mp.INFECTED
end
return mp.CLEAN
