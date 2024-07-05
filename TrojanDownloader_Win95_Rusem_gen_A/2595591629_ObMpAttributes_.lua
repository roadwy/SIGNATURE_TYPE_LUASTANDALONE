if mp.getfilesize() < 2300 then
  return mp.INFECTED
end
return mp.CLEAN
