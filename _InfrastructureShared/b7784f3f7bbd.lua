if mp.getfilesize() > 30000 then
  return mp.CLEAN
end
return mp.INFECTED
