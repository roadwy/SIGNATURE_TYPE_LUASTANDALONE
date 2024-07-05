if mp.getfilesize() > 32768 then
  return mp.CLEAN
end
return mp.INFECTED
