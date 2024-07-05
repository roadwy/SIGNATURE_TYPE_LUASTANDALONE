if mp.getfilesize() > 700000000 then
  return mp.INFECTED
end
return mp.CLEAN
