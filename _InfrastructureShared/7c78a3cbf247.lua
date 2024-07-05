if mp.getfilesize() > 330000000 then
  return mp.INFECTED
end
return mp.CLEAN
