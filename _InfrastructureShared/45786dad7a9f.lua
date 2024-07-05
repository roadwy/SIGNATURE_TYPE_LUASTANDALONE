if mp.getfilesize() < 160000 then
  return mp.INFECTED
end
return mp.CLEAN
