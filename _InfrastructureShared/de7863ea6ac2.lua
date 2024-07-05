if mp.getfilesize() > 40000 then
  return mp.INFECTED
end
return mp.CLEAN
