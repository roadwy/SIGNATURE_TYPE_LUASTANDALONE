if mp.getfilesize() < 400000 then
  return mp.INFECTED
end
return mp.CLEAN
