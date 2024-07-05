if mp.getfilesize() < 199680 then
  return mp.INFECTED
end
return mp.CLEAN
