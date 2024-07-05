if mp.getfilesize() < 200000 then
  return mp.INFECTED
end
return mp.CLEAN
