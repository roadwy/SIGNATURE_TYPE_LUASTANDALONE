if mp.getfilesize() < 650000 then
  return mp.INFECTED
end
return mp.CLEAN
