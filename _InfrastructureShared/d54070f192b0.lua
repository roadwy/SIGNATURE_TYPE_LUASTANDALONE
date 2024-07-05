if mp.getfilesize() < 48000 then
  return mp.INFECTED
end
return mp.CLEAN
