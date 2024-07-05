if mp.getfilesize() < 400 then
  return mp.INFECTED
end
return mp.CLEAN
