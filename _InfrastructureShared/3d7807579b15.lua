if mp.getfilesize() < 151552 then
  return mp.INFECTED
end
return mp.CLEAN
