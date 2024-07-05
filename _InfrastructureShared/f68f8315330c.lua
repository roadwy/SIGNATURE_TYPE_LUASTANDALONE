if mp.getfilesize() < 150000 then
  return mp.INFECTED
end
return mp.CLEAN
