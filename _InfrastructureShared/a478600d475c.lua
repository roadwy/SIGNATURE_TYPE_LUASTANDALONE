if mp.getfilesize() < 8000 then
  return mp.INFECTED
end
return mp.CLEAN
