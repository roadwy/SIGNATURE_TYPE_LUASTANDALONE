if mp.getfilesize() < 23000 then
  return mp.INFECTED
end
return mp.CLEAN
