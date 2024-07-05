if mp.getfilesize() > 1500000 then
  return mp.CLEAN
end
return mp.INFECTED
