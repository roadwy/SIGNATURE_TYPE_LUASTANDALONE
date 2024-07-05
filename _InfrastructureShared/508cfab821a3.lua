if mp.getfilesize() > 8192 then
  return mp.CLEAN
end
return mp.INFECTED
