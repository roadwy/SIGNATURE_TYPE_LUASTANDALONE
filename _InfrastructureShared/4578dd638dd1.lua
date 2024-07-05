if mp.getfilesize() < 32000 then
  return mp.INFECTED
end
return mp.CLEAN
