if mp.getfilesize() > 12000 then
  return mp.INFECTED
end
return mp.CLEAN
