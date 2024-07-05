if mp.getfilesize() < 92928 then
  return mp.INFECTED
end
return mp.CLEAN
