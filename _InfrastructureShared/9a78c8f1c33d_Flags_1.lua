if mp.getfilesize() < 9000 then
  return mp.INFECTED
end
return mp.CLEAN
