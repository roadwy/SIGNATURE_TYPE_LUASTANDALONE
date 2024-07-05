if mp.getfilesize() < 230000 then
  return mp.INFECTED
end
return mp.CLEAN
