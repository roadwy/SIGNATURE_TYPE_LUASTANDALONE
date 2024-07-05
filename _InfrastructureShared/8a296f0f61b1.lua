if mp.getfilesize() < 500 then
  return mp.INFECTED
end
return mp.CLEAN
