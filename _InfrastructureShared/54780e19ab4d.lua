if mp.getfilesize() < 13000 then
  return mp.INFECTED
end
return mp.CLEAN
