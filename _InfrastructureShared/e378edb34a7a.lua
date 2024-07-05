if mp.getfilesize() < 520000 then
  return mp.INFECTED
end
return mp.CLEAN
