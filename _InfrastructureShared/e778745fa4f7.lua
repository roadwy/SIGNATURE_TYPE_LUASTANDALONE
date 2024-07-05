if mp.getfilesize() < 49152 then
  return mp.INFECTED
end
return mp.CLEAN
