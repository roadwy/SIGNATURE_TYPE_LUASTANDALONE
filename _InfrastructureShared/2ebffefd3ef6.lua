if mp.getfilesize() < 511 then
  return mp.INFECTED
end
return mp.CLEAN
