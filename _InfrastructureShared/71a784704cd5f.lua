if mp.getfilesize() > 200000 then
  return mp.CLEAN
end
return mp.INFECTED
