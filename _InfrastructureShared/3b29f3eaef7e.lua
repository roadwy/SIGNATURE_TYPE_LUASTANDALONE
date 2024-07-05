if mp.getfilesize() <= 512 then
  return mp.INFECTED
end
return mp.CLEAN
