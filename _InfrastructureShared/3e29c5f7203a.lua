if mp.getfilesize() < 256 then
  return mp.INFECTED
end
return mp.CLEAN
