if mp.getfilesize() > 15000000 then
  return mp.INFECTED
end
return mp.CLEAN
