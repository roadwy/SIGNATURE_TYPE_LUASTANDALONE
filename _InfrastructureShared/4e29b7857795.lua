if mp.getfilesize() < 6200 then
  return mp.INFECTED
end
return mp.CLEAN
