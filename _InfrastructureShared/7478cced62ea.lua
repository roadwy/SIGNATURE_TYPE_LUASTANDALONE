if mp.getfilesize() < 58000 then
  return mp.INFECTED
end
return mp.CLEAN
