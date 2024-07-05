if mp.getfilesize() < 6500 then
  return mp.INFECTED
end
return mp.CLEAN
