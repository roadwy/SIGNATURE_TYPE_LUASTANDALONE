if mp.getfilesize() < 3140000 then
  return mp.INFECTED
end
return mp.CLEAN
