if mp.getfilesize() > 20000000 then
  return mp.INFECTED
end
return mp.CLEAN
